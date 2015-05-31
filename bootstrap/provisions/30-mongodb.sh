if [ ! -f /etc/yum.repos.d/mongodb-org-3.0.repo ]; then
	if [ -f /vagrant/bootstrap/files/mongodb-org-3.0.repo ]; then
		sudo cp /vagrant/bootstrap/files/mongodb-org-3.0.repo /etc/yum.repos.d/mongodb-org-3.0.repo
	fi
fi

if [ ! -f /etc/yum.repos.d/mongodb-org-3.0.repo ]; then
	sudo yum -y install mongodb-org
	sudo systemctl start mongod
	sudo systemctl enable mongod.service
fi