**2019年4月22日星期一**

想法起源。想着为国内乃木坂46应援生态做些什么，但是日语实力欠缺，只能从自己专业相关的、擅长的出发。就想着建一个分享性质的站，整理一些call本、普及一些乃团基本知识。



**2019年4月23日星期二**

目前计划的主要内容是一些总结整理的call手册。

那么首先就要有歌词，刚开始计划像之前整理专辑封面一样，从iTunes上爬。但是由于iTunes主要做的是流媒体服务，网页版iTunes不提供歌词，Mac版传输过程中歌词是加密的，那么iTunes这条路就走不通了。转向目前乃团歌曲版权较全的QQ音乐。

方法比较简单，QQ音乐的歌词是异步加载的，所以需要单独请求歌词，在Chrome的console中可以查看到歌曲加载过程中异步加载了`fcg_query_lyric_yqq.fcg`，请求链接为

```
https://c.y.qq.com/lyric/fcgi-bin/fcg_query_lyric_yqq.fcg?nobase64=1&musicid=$SONG-ID&-=jsonp1&g_tk=337763514&loginUin=XXXXXXXXX&hostUin=0&format=json&inCharset=utf8&outCharset=utf-8&notice=0&platform=yqq.json&needNewCode=0
```

但是直接请求会返回

```html
{"retcode":-1310,"code":-1310,"subcode":-1310}
```

可能是QQ音乐做的反爬虫处理，但是可以在请求头部加上`Referer:https://y.qq.com/n/yqq/song/000BRA6E4BsiqU.html`，就能返回正确的结果了。song-id可以在可以在歌曲详情页获得，代码就完成了[这里](https://paste.ubuntu.com/p/8KxyVmkmJ8/)。

然后...

![](https://ae01.alicdn.com/kf/HTB1BEaySpzqK1RjSZFCq6zbxVXaw.jpg)

接下来尝试使用[乃木坂46の歌詞一覧リスト - 歌ネット](https://www.uta-net.com/artist/12550/)。



**2019年4月24日星期三**

歌词的下载完成了[这里](https://paste.ubuntu.com/p/Dvs8z2wxzh/)，看复联4去了



**2019年4月25日星期四**

今天写了一些call本，真是精神污染。一共167首歌，今天完成了21首。

而且总算知道了为什么之前写的笔记里的图片加载不出来了，本来我用的微博图床，结果它最近加上了防盗链功能，图就全挂了。。。



**2019年4月26日星期五**

555真是精神污染。

今天还发现少下载了几首solo的歌词，因为归类并没有直接归到「乃木坂46」，然后总数增加到186首。现在做了49首。为了防止进度丢失，还给搞上了版本控制，远程放在GitHub里了。

算了，凑个整吧，又做了一首。第50首是9单的「無口なライオン」，娜娜真是美得不可方物，B メロ的那段舞看得我入迷。娜娜，毕业以后，脱离了乃木坂带给你的光环，也要继续上行。

眼好酸，屏幕实在太小了，盯着这么多字看了一下午。

**2019年4月27日星期六**

87/187，效率还是太低了，可能是一边看live一边搞的缘故吧。