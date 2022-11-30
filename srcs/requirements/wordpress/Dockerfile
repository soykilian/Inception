FROM debian:buster

ARG DBNAME
ARG PASSWORD
ARG USERNAME

EXPOSE 9000

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
RUN mkdir -p /var/www/wp
RUN chown -R www-data:www-data /var/www/wp

#To configure wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv -f wp-cli.phar /usr/local/bin/wp

WORKDIR "/var/www/wp"
COPY ./start.sh /home
RUN chmod +x /home/start.sh
 
CMD ["/home/start.sh"]


