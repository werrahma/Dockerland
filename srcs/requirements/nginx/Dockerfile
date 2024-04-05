FROM debian:bullseye
RUN apt-get update && apt-get install nginx -y
RUN apt install openssl -y
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MO/L=BG/O=1337/OU=student/CN=werrahma.42.fr"
COPY ./conf/default.conf /etc/nginx/conf.d/
CMD [ "nginx", "-g", "daemon off;"]