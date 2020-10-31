# Nodejs 打包 Docker 镜像


## 一、创建 Node 服务

## 二、编写 Dockerfile 文件

## 三、编写 .dockerignore 文件

## 四、构建镜像

```shell
$ docker build -t <tagName> .
# 查看镜像
$ docker images
```

## 五、运行镜像

1. 运行 Docker 容器

```bash
$ docker run -p 49160:8080 -d node-express-app
```

2. 查看容器是否正常运行

```bash
# 获取 CONTAINER ID  
$ docker ps
# 打印输出日志
$ docker logs <CONTAINER ID>

# 打印日志
Server Running on http://127.0.0.1:8088
```

3. 进入容器

```bash
$ docker exec -it <CONTAINER ID> /bin/bash
```

