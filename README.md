# Nodejs 打包 Docker 镜像


## 一、创建 Node 服务

通过 `express` 框架，创建 webapp 服务。

## 二、编写 Dockerfile 文件

主要步骤: 
1. 指定 Node 环境
2. 指定工作空间
3. 安装依赖包
4. 暴露端口号
5. 启动服务

```bash
# 指定 Node 版本号
# https://hub.docker.com/_/node
FROM node:12
# 创建工作目录
WORKDIR /Users/robbie/code/kg-base/node-docker-image
# 安装依赖
COPY package*.json ./
RUN npm install

COPY . .
# 绑定端口号
EXPOSE 8080
# 启动服务
CMD ["node", "server.js"]

```

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

