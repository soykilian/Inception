CREATE DATABASE IF NOT EXISTS DBNAME DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

GRANT ALL ON DBNAME.* TO 'USERNAME'@'localhost' IDENTIFIED BY 'PASSWORD';
GRANT ALL ON DBNAME.* TO 'USERNAME'@'%' IDENTIFIED BY 'PASSWORD';

FLUSH PRIVILEGES;
