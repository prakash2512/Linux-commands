###Remove all mysql 
sudo systemctl stop mysql
sudo apt-get purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*
sudo rm -rf /etc/mysql /var/lib/mysql

###To create db, username and password

create database databasename;
grant all privileges on database.* to 'username'@'host' identified by 'password';
flush privileges;
exit;


### TO see user's
login to root
use mysql
select * from user;

### To drop a user
drop user 'username'@'localhost';






