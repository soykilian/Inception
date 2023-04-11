FROM debian:buster

EXPOSE 9000

ARG DBNAME
ARG DB_PASSWORD
ARG USERNAME
ARG WP_ADMIN_NAME
ARG WP_ADMIN_PASS
ARG WP_ADMIN_EMAIL
ARG WP_USER_NAME
ARG WP_USER_PASS
ARG WP_USER_EMAIL


ENV USERNAME=$USERNAME
ENV DB_PASSWORD=$DB_PASSWORD
ENV DBNAME=$DBNAME
ENV WP_ADMIN_NAME=$WP_ADMIN_NAME
ENV WP_ADMIN_PASS=$WP_ADMIN_PASS
ENV WP_ADMIN_EMAIL=$WP_ADMIN_EMAIL
ENV WP_USER_NAME=$WP_USER_NAME
ENV WP_USER_PASS=$WP_USER_PASS
ENV WP_USER_EMAIL=$WP_USER_EMAIL



RUN apt-get -y update && apt-get -y install php-cgi \
											php-common \
											php-fpm \
											php-pear \
											php-mbstring \
											php-zip \
											php-net-socket \
											php-gd \
											php-xml-util \
											php-gettext \
											php-mysql \
											php-bcmath \
											mariadb-client \
											wget

COPY ./wp_pool.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir -p /run/php
RUN mkdir -p /var/www/html/wordpress
RUN chown -R www-data:www-data /var/www/html/wordpress

#To configure wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv -f wp-cli.phar /usr/local/bin/wp

WORKDIR "/var/www/html/wordpress"
COPY ./start.sh /home
RUN chmod +x /home/start.sh
 
CMD ["/home/start.sh"]


