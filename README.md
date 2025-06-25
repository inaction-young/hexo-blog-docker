# hexo-blog-docker
hexo docker file

#### 镜像
* 个人打了个公开镜像在阿里云
* docker pull crpi-h3osktfvc8oa0mk6.cn-shanghai.personal.cr.aliyuncs.com/tj_commons/tsf-blog:1.0.1
* 镜像的工作目录：`/app`
* 默认端口：4000

#### 说明
* 容器初次启动会在工作目录下初始化hexo，会执行`hexo init blog`，不会安装任何模版
* 所以需要自己将`/app/blog`映射出来，将模版、内容放在对应的目录下
* 后续启动发现有`/app/blog`目录下存在文件则不会再次初始化hexo

#### 参考
* 因为对`hexo`不是特别了解，所以镜像的脚本是参考了 [👉点击](https://github.com/appotry/docker-hexo)，我这个算是个阉割版吧。
* [Hexo 官网](https://hexo.io/zh-cn/)
* [我目前使用的模版](https://github.com/tufu9441/maupassant-hexo)





