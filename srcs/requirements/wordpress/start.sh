#!/bin/bash

wp --allow-root core download

wp --allow-root config create --dbhost=mariadb --dbname=$DBNAME --dbuser=$USERNAME --dbpass=$PASSWORD

wp --allow-root db create

wp --allow-root core install --url=mclerico.42.fr --title=Inception --admin_user=mclerico --admin_password=mclerico --admin_email=mclerico@student.42madrid.com

wp --allow-root user create mavi mclerico@student.42madrid.com --user_pass=1234

# Execute PHP
php-fpm7.3 -F
