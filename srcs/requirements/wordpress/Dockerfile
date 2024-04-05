FROM debian:bullseye

RUN apt update -y 


RUN apt install php-fpm php-mysql -y

WORKDIR /var/www/wordpress

RUN apt install curl -y


COPY ./tools/script.sh /

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/

RUN chmod +x /script.sh

CMD [ "/script.sh" ]
