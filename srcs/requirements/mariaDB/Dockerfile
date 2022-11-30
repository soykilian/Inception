FROM debian:buster

RUN apt-get update

RUN apt-get -y install mariadb-server mariadb-client

RUN mkdir /run/mysqld

RUN chown -R mysql:mysql /run/mysqld

RUN chown -R mysql:mysql /var/lib/mysql

EXPOSE 3306

CMD ["mysqld", "--user=mysql", "--console"]

