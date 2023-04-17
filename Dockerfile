FROM debian
#FROM ubuntu
EXPOSE 801
USER root
WORKDIR /app 
COPY config.json nginx.conf v2ray.sh start.sh /app/
RUN apt update&&apt install -y procps curl python3 python3-pip wget nginx&&chmod +x start.sh&&chmod +x v2ray.sh&&mkdir /app/log&&./v2ray.sh --zh
#RUN apt update&&apt install -y procps curl python3 wget nginx&&nginx -g 'daemon off;'
#CMD ["python3","-m","http.server","801"]
#CMD ./start.sh 
