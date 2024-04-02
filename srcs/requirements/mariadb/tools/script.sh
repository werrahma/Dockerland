#!/bin/bash

sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start

sleep 1

mariadb -e "CREATE DATABASE IF NOT EXISTS $sdb1_name ;"
mariadb -e "CREATE USER IF NOT EXISTS $sdb1_user IDENTIFIED BY '$sdb1_pwd' ;"
mariadb -e "GRANT ALL PRIVILEGES ON $sdb1_name.* TO '$sdb1_user' ;"
mariadb -e "FLUSH PRIVILEGES;"

service mariadb stop
exec mysqld_safe