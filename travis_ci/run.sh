#!/bin/bash
set -x

echo `date` >> /root/travis_log

REPO_DIR="/root/git/nogizaka-call"
PUBLISH_DIR="/root/git/nogizaka-call/publish"
TOOL_DIR="/root/git/nogizaka-call/tools"
HEXO_DIR="/root/nogizaka-call"
POST_DIR="/root/nogizaka-call/source/_posts"
WEB_DIR="/var/www-ngzk"

function discard_change() {
	cd $REPO_DIR
	git clean -xfd > /dev/null
	git ls-files -d | xargs -i git checkout '{}' > /dev/null
	git pull origin master
}

function hexo_clean() {
	cd $HEXO_DIR/source/_posts
	rm -rf *
}

function hexo_new() {
	cd $HEXO_DIR
	hexo new $1
}

function hexo2nginx() {
	cd $HEXO_DIR
	hexo clean
	hexo g
	rsync -avz --delete $HEXO_DIR/public/ $WEB_DIR/
	chown -R nginx:nginx $WEB_DIR
}

# 获取最新仓库
cd $REPO_ROOT
discard_change

# 查找并重命名名字包含空格的文件，方便后续处理
cd $PUBLISH_DIR
find . -name '_* *.md' -print0 | xargs -0 -I {} bash -c 'tmp="{}"; mv "${tmp}" "${tmp// /-}"'

# 清除已有博文
cd $HEXO_DIR
hexo_clean

# 生成新博文
for dir in $(ls $PUBLISH_DIR); do
	for workname in $(ls $dir); do
		
		[ -d $dir/$workname ] || continue		
		
		cd $dir/$workname
		echo "===="$workname"===="
		for song_file_name in `find $(pwd) -name '*.md'`; do
			song_name=`basename $song_file_name | sed -e 's/.md//g' -e 's/_//g'`
			
			hexo_new $song_name
			post_file_name=$POST_DIR/$song_name\.md
			
			post_title=${song_name//-/ }
			post_date=`cat $TOOL_DIR/release_date.csv | grep $workname | cut -d ',' -f 2`
			category=$workname
			cover=`python /tmp/get_cover.py "$workname" "$post_title" || python /tmp/get_cover.py "$workname" 123456`

			# 写入 Hexo 博文元数据		
			cat <<- EOF > $post_file_name
			---
			title: $post_title
			date: ${post_date:-`date +"%Y-%m-%d"`} 00:00:46
			tags:
			- ${tag:-${category}}
			categories:
			- $category
			comments: false
			cover: $cover
			---
			EOF
			# 写入 Hexo 博文正文
			cat $song_file_name >> $post_file_name
	
		done
	done
done

# 恢复本地仓库状态
cd $REPO_DIR
discard_change

# 从 Hexo public 拷贝至 web 目录
cd $HEXO_DIR
hexo2nginx
