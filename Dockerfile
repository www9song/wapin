FROM debian
EXPOSE 80
WORKDIR /app 
COPY v2ray.sh /app 
RUN chmod +x ./v2ray.sh&&\
    apt-get update &&\
    apt-get install -y iputils-ping procps curl python3 python3-pip
CMD ["python3","-m","http.server","80"]
