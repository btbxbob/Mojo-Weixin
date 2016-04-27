### Docker镜像安装及使用方法

1. ***安装镜像***

  从官方仓库直接拉取

        docker pull mojo-weixin
        
  或者使用Dockerfile自己build
  
        docker build -t mojo-weixin .

2. ***运行镜像***

        docker run -at --env LOG_ENCODING=utf8 --env PORT=5000 -p 5000:5000 -v /tmp:/tmp mojo-weixin 

  为了能够方便查看日志，获取容器中下载的二维码文件等，建议把宿主的/tmp目录挂载到docker的/tmp上，同时设置容器的端口映射

  通过环境变量的方式传递参数，当前支持的环境变量参数：
  
  | 环境变量     | 作用          | 默认值 |
  | ------------ |:-------------------------| :-------------------------------|
  | PORT         | openwx插件api地址监听端口| 5000                            |
  | POST_API     | openwx插件消息上报地址   | 无                              |
  | UA_DEBUG     | 是否打印调试日志         | 0                               |
  | LOG_PATH     | 日志报错路径             | STDERR                          |
  | LOG_ENCODING | 日志编码                 | utf8                            |
  | LOG_LEVEL    | 日志等级                 | info                            |
  | QRCODE_PATH  | 二维码保持路径           | /tmp/mojo_weixin_qrcode.jpg     |
