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
