#!/bin/bash

echo "Configurando Mysql Server..."

sudo apt-get install mysql-server
mysql -u root -p -e "CREATE USER 'giuser'@'127.0.0.1' IDENTIFIED BY 'P4ssw0rd';"
mysql -u root -p -e "GRANT ALL PRIVILEGES ON *.* TO 'giuser'@'127.0.0.1' WITH GRANT OPTION;"

echo "Finish!"
