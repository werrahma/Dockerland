FROM debian:bullseye
RUN apt-get update && apt-get install -y mariadb-server
COPY ./tools/script.sh /bin/
RUN chmod +x bin/script.sh
ENTRYPOINT ["script.sh"]
