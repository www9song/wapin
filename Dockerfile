FROM debian
EXPOSE 801
WORKDIR /app 
ADD v2ray.sh /app 
RUN chmod a+x ./v2ray.sh
CMD [".", "./v2ray.sh"]
