installPackage postgresql-server
installPackage postgresql
installPackage phpPgAdmin
sudo postgresql-setup initdb
sudo systemctl enable postgresql.service
sudo systemctl start postgresql.service