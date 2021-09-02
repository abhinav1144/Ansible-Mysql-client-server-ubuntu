CREATE USER 'osi'@'%' IDENTIFIED BY 'Osi@123';
GRANT ALL PRIVILEGES ON * . * TO 'osi'@'%';
FLUSH PRIVILEGES;

SELECT user FROM mysql.user;


skip
ufw enable
ufw allow 3306
ufw allow 22
ufw disable


replace

sudo sed 's/bind-address = 127.0.0.1/#bind-address = 127.0.0.1/' mysqld.cnf
sudo sed 's/mysqlx-bind-address = 127.0.0.1/#mysqlx-bind-address = 127.0.0.1/' mysqld.cnf


#bind-address            = 127.0.0.1
#mysqlx-bind-address     = 127.0.0.1


scp /root/mysqld.cnf ubuntu@54.147.235.152:/home/ubuntu/mysqld.cnf

sudo cp -rf mysqld.cnf /etc/mysql/mysql.conf.d/

sudo service mysql restart
