#!/bin/sh

# Set server timezone and sync time
sudo timedatectl set-timezone Europe/Sofia
sudo yum -y install ntp
sudo systemctl start ntpd
sudo systemctl enable ntpd

# Extra Packages for Enterprise Linux Repos
sudo yum -y install epel-release

# Update the VM
sudo yum -y update

# Apache
sudo yum -y install httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service

# MySQL (MariaDB)
sudo yum -y install mariadb-server mariadb
sudo systemctl start mariadb
sudo systemctl enable mariadb.service

# PHP
sudo yum -y install php php-mysql
sudo systemctl restart httpd.service

# PHP Packages
sudo yum -y install php5-curl
sudo yum -y install libmcrypt-devel
sudo yum -y install php-mcrypt

# Revision Control
sudo yum -y install git subversion

# NodeJS
sudo yum -y install nodejs
sudo yum -y install npm

# Node Packages
sudo npm install grunt gulp

# Composer
if [ ! -f /usr/local/bin/composer ]; then
    curl -sS https://getcomposer.org/installer | php -- --filename=composer
    sudo mv composer /usr/local/bin/composer
fi










