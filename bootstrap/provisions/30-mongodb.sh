if [ -f /etc/yum.repos.d/mongodb-org-3.0.repo ]; then
	installPackage mongodb-org
	sudo chkconfig mongod on
	sudo systemctl start mongod
fi