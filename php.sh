#!/bin/bash

echo "Install Apache2, php5 and mysql-server..."
sudo apt-get install apache2
sudo apt-get install mysql-server
sudo apt-get install php5
sudo apt-get install php5-mysql
sudo a2enmod rewrite
sudo cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/
sudo service apache2 restart

echo "Finish!"

echo "Edit this: sudo vim /etc/apache2/sites-available/default"
echo "Change: DocumentRoot /var/www -> AllowOverride None ->to-> AllowOverride All"
echo "sudo service apache2 restart"
