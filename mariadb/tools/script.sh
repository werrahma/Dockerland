#!/bin/bash

sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

# mysql_secure_installation << EOF

# Y
# 1234
# 1234
# Y
# Y
# Y
# Y
# EOF

echo "CREATE DATABASE IF NOT EXISTS werrahma ;"  | mysql -uroot
echo "CREATE USER IF NOT EXISTS 'userrr'@'%' IDENTIFIED BY '0631' ;"  | mysql -uroot
echo "GRANT ALL PRIVILEGES ON werrahma.* TO 'userrr'@'%' ;"  | mysql -uroot
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '1234' ;"  | mysql -uroot
echo "FLUSH PRIVILEGES;"  | mysql -uroot

echo "FLUSH PRIVILEGES;" | mysql -uroot

service mysql stop
CMD ["/usr/local/bin/script.sh"]

# sleep infinity
# exec "$@"