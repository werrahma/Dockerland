# FROM debian:buster

# # Set root password during installation
# RUN echo "mariadb-server-10.3 mysql-server/root_password password your_root_password" | debconf-set-selections \
#     && echo "mariadb-server-10.3 mysql-server/root_password_again password your_root_password" | debconf-set-selections

# # Install MariaDB server
# RUN apt-get update && apt-get install -y mariadb-server \
#     && rm -rf /var/lib/apt/lists/*

# # Configure MariaDB to bind to all network interfaces
# RUN sed -i 's/^\(bind-address\s*=\s*\).*/\0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

# # Expose the MySQL port
# EXPOSE 3306

# # Start MariaDB on container startup
# CMD ["mysqld", "--user=mysql", "--console"]

FROM debian:bullseye
RUN apt-get update && apt-get install -y mariadb-server
# COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/
# COPY ./tools/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/script.sh /usr/local/bin/

# CMD ["/usr/bin/mysqld_safe"]
# CMD ["/bin/bash", "/script.sh"]
# CMD ["/usr/local/bin/script.sh"]
RUN chmod +x /usr/local/bin/script.sh
ENTRYPOINT [ "/usr/local/bin/script.sh" ]
# CMD ["./script.sh"]
