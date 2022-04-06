#!/bin/bash
sudo -i
apt install epel-release apt-utils wget -y
apt install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
apt-config-manager --disable remi-php54
apt-config-manager --enable remi-php73
apt install php php-mysql -y
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
cp -r wordpress/* /var/www/html/
chown -R apache:apache /var/www/html
systemctl restart httpd