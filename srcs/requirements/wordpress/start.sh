#!/bin/bash

# download all wordpress files
wp --allow-root core download
# create the wordpress database and configure the ARGS ()
wp --allow-root config create --dbhost=mysql --dbname=$DBNAME --dbuser=$USERNAME --dbpass=$PASSWORD
wp --allow-root db create

# Configure the wordpress logins 
wp --allow-root core install --url=mclerico.42.fr --title=Inception --admin_user=mclerico --admin_password=mclerico --admin_email=mclerico@student.42madrid.com

# Execute PHP
php-fpm7.3 -F
