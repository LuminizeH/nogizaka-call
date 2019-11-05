# 乃木坂46 CALL 手册
[![](https://img.shields.io/travis/luminizeh/nogizaka-call.svg)](https://www.travis-ci.org/LuminizeH/nogizaka-call)
[![](https://img.shields.io/badge/nogizaka-suki-77348b)](https://www.nogizaka46.com)


## 0.项目简介

乃木坂46 CALL 手册 GitHub 版

### 1.仓库结构

- `publish` 目录：编写完成的文档，目录即为文章分类。为了便于区分，编写完成的 CALL 本名称以 `_` 为前导
  - 单曲专辑目录
  - `其他`目录: 成员与歌曲应援色、基础知识和一些其他文档
- `todo` 目录：待编写的文档（已含完整歌词）
- `tools` 目录：
  - `pic.json`: 文档封面 URL
  - `release_date.csv`: 单曲与专辑的发行日期，用来作为 CALL 本的发布日期
  - 其他 CI/CD 流程中用到的脚本
  
### 2.工作方式

本仓库使用 Travis CI 持续集成并发布在网站 [乃木坂 46 CALL 手册](https://nogi-call.cn/) 上

### 3.贡献

欢迎可以以 pr 和 issue 的方式修改以下地方：
- `todo` 目录：编辑未完成的 CALL 本
- `public` 目录：发表或修改 CALL 本和文章
- `tools/pic.json`：修改文档封面（目前使用的是默认专辑封面）

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
- [x] 细化歌曲封面设置
- [ ] 去除 CALL 本中的 HTML 标签，渲染环节改在 CI/CD 中进行
- [ ] README 日/英版本翻译
- [ ] :warning:同时触发多个 pipeline 会导致重复生成文章
