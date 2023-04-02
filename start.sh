#nginx -c /app/nginx.conf
echo 开始运行v2ray服务器。。。。
v2ray -config=/app/config.json
#python3 -m http.server 801
echo 服务器运行完毕。
