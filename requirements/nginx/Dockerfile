FROM debian:bullseye
RUN apt-get update && apt-get install nginx -y
# RUN apt install vim -y
RUN apt install openssl -y
RUN mkdir -p /etc/nginx/ssl
# RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MO/ST=IDF/L=BG/O=1337/OU=student/CN=werrahma.42.fr/UID=werrahma"
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=BG/O=1337/OU=student/CN=[werrahma.1337.ma](http://werrahma.42.ma/)"
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=[sahafid.1337.ma](http://sahafid.42.ma/)"
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MO/ST=IDF/L=BG/O=1337/OU=student/CN=werrahma.42.fr/UID=werrahma"
# RUN mkdir -p /var/run/nginx
# COPY ./conf/default /etc/nginx/sites-enabled/
COPY ./conf/default.conf /etc/nginx/conf.d/
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html
CMD [ "nginx", "-g", "daemon off;"]