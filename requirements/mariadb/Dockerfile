FROM debian:bullseye
RUN apt-get update && apt-get install -y mariadb-server
# COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./50-server.cnf	/etc/mysql/mariadb.conf.d/
COPY ./tools/script.sh /bin/

# CMD ["/usr/bin/mysqld_safe"]
# CMD ["/bin/bash", "/script.sh"]
# CMD ["/usr/local/bin/script.sh"]
RUN chmod +x bin/script.sh
# ENTRYPOINT [ "bash" ]
ENTRYPOINT ["script.sh"]
