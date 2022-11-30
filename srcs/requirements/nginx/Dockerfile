FROM debian:buster

RUN apt-get -y update && apt-get -y install nginx openssl

RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
							-keyout /etc/nginx/ssl/selfsigned.key \
							-out /etc/nginx/ssl/selfsigned.crt \
							-subj "/C=ES/ST=Madrid/L=Madrid/O=42/OU=42madrid/CN=mclerico.42.fr"
RUN mkdir ./conf/
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
#COPY index.html /tmp/index.html
#COPY default /etc/nginx/sites-available/default

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

CMD ["nginx"]

#EXPOSE 80/tcp
