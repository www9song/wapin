FROM debian
#FROM ubuntu
EXPOSE 80
USER root
WORKDIR /app 
COPY config.json nginx.conf start.sh /app/
RUN apt update&&apt install -y procps curl python3 python3-pip wget nginx&&chmod +x start.sh&&mkdir /app/log
#RUN apt update&&apt install -y procps curl python3 wget nginx&&nginx -g 'daemon off;'
#CMD ["python3","-m","http.server","801"]
#CMD ./start.sh 
