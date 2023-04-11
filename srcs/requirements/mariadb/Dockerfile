FROM debian:buster

ARG DBNAME
ARG DB_PASSWORD
ARG USERNAME
ARG ROOT_PASS



ENV USERNAME=$USERNAME
RUN apt-get update


RUN apt-get -y install mariadb-server mariadb-client

RUN mkdir /run/mysqld

RUN chown -R mysql:mysql /run/mysqld

RUN chown -R mysql:mysql /var/lib/mysql

COPY ./conf.sql .

RUN sed -i "s/DBNAME/$DBNAME/g" ./conf.sql
RUN sed -i "s/USERNAME/$USERNAME/g" ./conf.sql
RUN sed -i "s/DB_PASSWORD/$DB_PASSWORD/g" ./conf.sql
RUN sed -i "s/ROOT_PASS/$ROOT_PASS/g" ./conf.sql

RUN cat ./conf.sql

RUN service mysql start && mysql < conf.sql

EXPOSE 3306

CMD ["sh", "-c", "mysqld --user=$USERNAME --bind-address=0.0.0.0 --skip-networking=false --console" ]
#CMD mysqld --user=$USERNAME --bind-address=0.0.0.0 --skip-networking=false --console
