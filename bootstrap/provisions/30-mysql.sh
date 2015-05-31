# MySQL (MariaDB)
installPackage mariadb-server
installPackage mariadb
installPackage php-mysql
installPackage phpMyAdmin

sudo systemctl start mariadb
sudo systemctl enable mariadb.service