# 使用轻量级的 Nginx 镜像
FROM nginx:alpine

# 将 GitHub Actions 编译出的 dist 目录下的静态文件复制到 Nginx 托管目录
# 注意：请务必确认你项目根目录下 angular.json 里的 outputPath 或者是 dist 下生成的文件夹名是否为 bitcoin-order-app
COPY dist/bitcoin-order-app /usr/share/nginx/html

# 暴露 80 端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]