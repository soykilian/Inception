FROM debian:buster

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
											wget

RUN mkdir -p /var/www/html/example.com/src

WORKDIR /var/www/html/

RUN wget http://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz && mv latest.tar.gz wordpress-`date "+%Y-%m-%d"`.tar.gz

RUN chown -R www-data:www-data /var/www/html/example.com

CMD ["sleep", "20000"]

