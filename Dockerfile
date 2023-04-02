FROM v2ray/official
#FROM ubuntu
EXPOSE 80
USER root
WORKDIR /app 
COPY config.json nginx.conf entrypoint.sh /app/
RUN apk update&&apk add procps curl python3 wget nginx&&chmod +x entrypoint.sh&&mkdir /app/log
#RUN apt update&&apt install -y procps curl python3 wget nginx&&nginx -g 'daemon off;'
#CMD ["python3","-m","http.server","801"]
CMD ./start.sh 
