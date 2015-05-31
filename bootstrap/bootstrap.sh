#!/bin/sh

# Update the VM
sudo yum -y update

# Set server timezone and sync time
sudo timedatectl set-timezone Europe/Sofia
sudo yum -y install ntp
sudo systemctl start ntpd
sudo systemctl enable ntpd

# Extra Packages for Enterprise Linux Repos
sudo yum -y install epel-release

PROVISIONS=/vagrant/bootstrap/provisions/*.sh
for provision in $PROVISIONS
do
	echo -e "\e[0;33mProcessing $(basename "$provision" .sh) provision...\e[0m"
	. $provision
done

# Restart the Apache so the changes can be applied.
sudo systemctl restart httpd.service