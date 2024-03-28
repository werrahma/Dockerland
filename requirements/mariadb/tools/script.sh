#!/bin/bash

sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start

sleep 1

# echo "CREATE DATABASE IF NOT EXISTS $sdb1_name ;"  | mysql
mariadb -e "CREATE DATABASE IF NOT EXISTS $sdb1_name ;"
# echo "CREATE USER IF NOT EXISTS $sdb1_user IDENTIFIED BY '$sdb1_pwd' ;"  | mysql
mariadb -e "CREATE USER IF NOT EXISTS $sdb1_user IDENTIFIED BY '$sdb1_pwd' ;"
# echo "GRANT ALL PRIVILEGES ON $sdb1_name.* TO '$sdb1_user' ;"  | mysql
mariadb -e "GRANT ALL PRIVILEGES ON $sdb1_name.* TO '$sdb1_user' ;"
# echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;"  | mysql
mariadb -e "FLUSH PRIVILEGES;"

service mariadb stop
mysqld_safe
# sleep infinity 