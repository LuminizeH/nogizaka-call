# 乃木坂46 CALL 手册
[![](https://img.shields.io/travis/luminizeh/nogizaka-call.svg)](https://www.travis-ci.org/LuminizeH/nogizaka-call)
[![](https://img.shields.io/badge/nogizaka-suki-77348b)](https://www.nogizaka46.com)


## 0.项目简介

乃木坂46 CALL 手册 GitHub 版。

### 1.仓库结构

- lyric 目录：编写完成的 CALL 本（.md 后缀），以专辑分类。为了便于区分，编写完成的 CALL 本名称以 `_` 为前导。
- todo 目录：待编写的 CALL 本（已含完整歌词，只需添加 CALL）。
- others 目录:
  - `pre_study.md`: 应援基本知识
  - `member_color.md`: 成员应援色
  - `member_nickname.ms`: CALL 中成员昵称
  - `song_color.md`: 歌曲应援色
  
### 2.工作方式

本仓库采用 Travis CI 持续集成，发布在网站 `http://nogi-call.cn:8046`。

### 3.贡献

如果想编写 CALL 本、对 CALL 本修改意见或者想发表自己的文章，欢迎提 pr 和 issue！ 

### 4.可能感兴趣的链接

1. [乃木坂 46 博客聚合](https://blog.nogi-call.cn/)
2. [乃木坂 46 CALL 手册（旧）](https://nogi-call.cn/)

### TODO

- [x] 原仓库跨账号转移
- [x] Travis CI 远程登录云主机
- [x] Hexo 自动生成分类、文章脚本
- [x] Travis CI 远程执行脚本
- [ ] 去除 CALL 本中的 HTML 标签，渲染环节改在 CI/CD 中进行
- [ ] 美化 Hexo 主题
