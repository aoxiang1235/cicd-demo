


# 基础镜像：使用官方 nginx 镜像作为起点
# 相当于我们拿一个已经装好 nginx 的服务器当底子
FROM nginx:1.24-alpine

# 把我们的 index.html 复制到 nginx 的网页目录里
# 左边是本地文件路径，右边是镜像里的路径
COPY index.html /usr/share/nginx/html/index.html

# 暴露 80 端口（只是声明，实际端口映射靠 docker run -p）
EXPOSE 80

# 容器启动时运行的命令（nginx 镜像已经有默认启动命令，这里可以省略）
# CMD ["nginx", "-g", "daemon off;"]
