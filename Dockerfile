# 使用官方的 Nginx 镜像作为基础镜像
FROM nginx:alpine

# 将构建的静态文件拷贝到 Nginx 的默认站点目录
COPY site /usr/share/nginx/html

# 暴露 80 端口
EXPOSE 80

# 默认启动 Nginx 服务
CMD ["nginx", "-g", "daemon off;"]
