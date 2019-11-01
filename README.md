# 乃木坂46 CALL 手册
[![](https://img.shields.io/travis/luminizeh/nogizaka-call.svg)](https://www.travis-ci.org/LuminizeH/nogizaka-call)
[![](https://img.shields.io/badge/nogizaka-suki-77348b)](https://www.nogizaka46.com)


## 0.项目简介

乃木坂46 CALL 手册 GitHub 版。

### 1.仓库结构

- lyric 目录：编写完成的 CALL 本（.md 后缀），以专辑分类。为了便于区分，编写完成的 CALL 本名称以 `_` 为前导。
- todo 目录：待编写的 CALL 本（已含完整歌词，只需添加 CALL），以及无需发表的文档。
- others 目录:
  - `release_date.csv`: 单曲与专辑的发行日期，用来作为 CALL 本的发布日期。
  - `其他`目录: 成员与歌曲应援色、基础知识和一些其他杂项。如果想发表自己的文章，请在这个目录下添加 Markdown 文件。
  
### 2.工作方式

本仓库采用 Travis CI 持续集成，发布在网站 [乃木坂 46 CALL 手册](https://nogi-call.cn/)。

### 3.贡献

如果想编写 CALL 本、对 CALL 本修改意见或者想发表自己的文章，欢迎提 pr 和 issue！ 

### 4.可能感兴趣的链接

1. [乃木坂 46 博客聚合](https://blog.nogi-call.cn/)
2. ~~[乃木坂 46 CALL 手册（旧）](https://nogi-call.cn/)~~

### TODO

- [x] 原仓库跨账号转移
- [x] Travis CI 远程登录云主机
- [x] Hexo 自动生成分类、文章脚本
- [x] Travis CI 远程执行脚本
- [x] 美化 Hexo 主题
- [x] 修改原有的网站图片，定制歌曲的缩略图、顶部图（以 JSON 格式保存，由 Python 加载）
- [x] 在 ECS 中设置内网 OSS 反向代理(URL: `https://pic.nogi-call.cn/`)，在下行流量超限时手动启用
- [ ] 细化歌曲封面设置
- [ ] 去除 CALL 本中的 HTML 标签，渲染环节改在 CI/CD 中进行
- [ ] README 日/英版本翻译
