#!/bin/bash

echo "Configurando Jboss as 7..."

sudo useradd -r -s /bin/false jboss-as
#sudo adduser jboss-as --no-create-home --disabled-password --disabled-login
sudo tail -n1 /etc/passwd

sudo cp ./jboss/java /etc/default/java
sudo cp ./jboss/jboss-as-7 /etc/default/jboss-as-7
sudo cp ./jboss/jboss-as-7.init /etc/init.d/jboss-as-7
sudo update-rc.d jboss-as-7 defaults
sudo chmod +x /etc/init.d/jboss-as-7

sudo cp ~/Downloads/jboss-as-7.tar.gz /opt/
cd /opt/
sudo tar -vzxf /opt/jboss-as-7.tar.gz 
sudo rm jboss-as-7.tar.gz
sudo chown -R jboss-as:jboss-as /opt/jboss-as-7
sudo mkdir /var/lib/gi
sudo chown -R jboss-as:jboss-as /var/lib/gi 

echo "Finish!"
echo "Use: sudo service jboss-as-7 start"
