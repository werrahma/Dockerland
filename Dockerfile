FROM debian:buster
RUN apt-get update && apt-get install -y
RUN apt install nginx -y
# RUN rm /etc/nginx/sites-enabled/default
# RUN apt install vim -y
# RUN mkdir -p /etc/nginx/ssl
# RUN apt install openssl -y
# RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MO/ST=IDF/L=BG/O=1337/OU=student/CN=[werrahma.1337.ma](http://werrahma.42.ma/)"
# # RUN mkdir -p /var/run/nginx
COPY conf/default /etc/nginx/sites-enabled/
# RUN chmod 755 /var/www/html
# # RUN chown -R www-data:www-data /var/www/html
CMD [ "nginx", "-g", "daemon off;" ]