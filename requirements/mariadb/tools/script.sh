#!/bin/bash

sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start


echo "CREATE DATABASE IF NOT EXISTS $db_name ;"  | mysql
echo "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd' ;"  | mysql
echo "GRANT ALL PRIVILEGES ON werrahma.* TO '$db_user'@'%' ;"  | mysql
# echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '1234' ;"  | mysql
echo "FLUSH PRIVILEGES;"  | mysql

service mysql stop
mysqld_safe
# sleep infinity
# exec "$@"

# commands="CREATE DATABASE IF NOT EXISTS \`${newDb}\`;CREATE USER IF NOT EXISTS'${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';GRANT USAGE ON *.* TO '${newUser}'@'${host}';GRANT ALL ON \`${newDb}\`.* TO '${newUser}'@'${host}';FLUSH PRIVILEGES;"

# echo "${commands}" | /usr/bin/mysql -u root -p