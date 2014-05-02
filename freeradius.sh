#!/bin/bash

echo "Configurando Freeradius..."

sudo apt-get install freeradius freeradius-mysql mysql-server -y
sudo scp -r root@177.85.54.21:/etc/freeradius/* /etc/freeradius/
sudo scp -r root@177.85.54.21:/usr/share/freeradius/dictionar* /usr/share/freeradius/
sudo scp -r root@177.85.54.21:/etc/mysql/my.cnf /etc/mysql/my.cnf 
sudo scp -r root@177.85.54.21:/home/auth/Dump20140411.sql /home/auth/ 
mysql -u root -p
mysql -u root -p < Dump20140411.sql 
sudo service mysql restart
sudo service freeradius restart

echo "Finish!"
