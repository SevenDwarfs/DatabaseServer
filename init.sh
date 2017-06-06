
mysql -u root << EOF
CREATE DATABASE movie;
use movie
source init_data.sql
CREATE USER 'movie_database'@'localhost' IDENTIFIED BY 'movie_database';
GRANT ALL ON movie.* TO 'movie_database'@'localhost';
EOF
service mysql restart
tail -f /var/log/mysql/error.log
