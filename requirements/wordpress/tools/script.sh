#!/bin/bash

sleep 5

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

# moves the WP-CLI PHAR file to the /usr/local/bin directory, which is in the system's PATH, and renames it to wp. This allows you to run the wp command from any directory
mv wp-cli.phar /usr/local/bin/wp
# wp cli update

# downloads the latest version of WordPress to the current directory. The --allow-root flag allows the command to be run as the root user, which is necessary if you are logged in as the root user or if you are using WP-CLI with a system-level installation of WordPress.
wp core download --allow-root

# installs WordPress and sets up the basic configuration for the site. The --url option specifies the URL of the site, --title sets the site's title, --admin_user and --admin_password set the username and password for the site's administrator account, and --admin_email sets the email address for the administrator. The --skip-email flag prevents WP-CLI from sending an email to the administrator with the login details.
wp core install --url=$sDOMAIN_NAME --title=$sWP_TITLE --admin_user=$sWP_ADMIN_USR --admin_password=$sWP_ADMIN_PWD --admin_email=$sWP_ADMIN_EMAIL  --allow-root
 
wp config create --dbname=$sdb1_name --dbuser=$sdb1_user --dbpass=$sdb1_pwd --dbhost=$sdbhost --allow-root
# creates a new user account with the specified username, email address, and password. The --role option sets the user's role to author, which gives the user the ability to publish and manage their own posts.
wp user create $sWP_USR $sWP_EMAIL --role=author --user_pass=$sWP_PWD --allow-root


# creates the /run/php directory, which is used by PHP-FPM to store Unix domain sockets.
mkdir /run/php

# starts the PHP-FPM service in the foreground. The -F flag tells PHP-FPM to run in the foreground, rather than as a daemon in the background.
/usr/sbin/php-fpm7.4 -F
