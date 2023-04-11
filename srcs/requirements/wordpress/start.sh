#!/bin/bash

wp --allow-root core download

wp --allow-root config create --dbhost=mariadb --dbname=$DBNAME --dbuser=$USERNAME --dbpass=$DB_PASSWORD

wp --allow-root db create

wp --allow-root core install --url=mclerico.42.fr --title=Inception --admin_user=$WP_ADMIN_NAME --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL

wp --allow-root user create $WP_USER_NAME $WP_USER_EMAIL --user_pass=$WP_USER_PASS

# Execute PHP
php-fpm7.3 -F
