#!/bin/sh

# Update the VM
sudo yum -y update

# Set server timezone and sync time
sudo timedatectl set-timezone Europe/Sofia

# Include Shell Helper Functions
. /vagrant/bootstrap/shell/functions.sh

PROVISIONS=/vagrant/bootstrap/provisions/*.sh
for provision in $PROVISIONS
do
	echo -e "\e[0;33mProcessing $(basename "$provision" .sh) provision...\e[0m"
	. $provision
done

# Restart the Apache so the changes can be applied.
sudo systemctl restart httpd.service