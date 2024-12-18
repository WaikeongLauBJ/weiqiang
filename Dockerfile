# 使用 Node.js 官方镜像
FROM node:18

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制项目所有文件
COPY . .

# 暴露端口
EXPOSE 80

# 容器启动命令
CMD ["node", "server.js"]
