Vagrant CentOS Web VM
=====================

This is a Vagrant CentOS based Virtual Machine setup.

# What is included

- CentOS 7
- Apache 2.4
- MariaDB
- MongoDB
- phpMyAdmin
- PHP 5.4
- Git
- SVN
- NodeJS
- Composer
- Laravel Installer

### PHP Packages

- curl
- mcrypt
- mbstring
- tokenizer
- openssl

### NodeJS Packages

- NPM
- Grunt
- Gulp

All packages are .sh files inside `bootstrap/provisions` folder.
In case you don't want some provision to be installed just rename the file NOT TO END ".sh" then it won't be installed. For example if don't wan't NodeJS, just rename the file 20-nodejs.sh to 20-nodejs.not and NodeJS won't be installed.

Note that if the provision is allready installed you have to `vagrant destroy` the VM and then remove the file and `vagrant up` again to remove the provision.

# Install

Clone the repo in your home directory.

```
$ git clone git@github.com:Dyankov/vagrant-centos.git
```

Rename the file `vagrant-centos/bootstrap/settings.yam.dist` to `vagrant-centos/bootstrap/settings.yam.` (remove .dist) and changes accourding to your setup.

Install Vagrant VBGuest pluging on your machine. This plugin is needed for proper folder syncing.

```
vagrant plugin install vagrant-vbguest
```

When you are ready run:

```
$ vagrant up
```

After update of your `settings.yaml` file or repo update run the following command to update VM:

```
vagrant reload --provision
```

# TODO

* Now the server has only one PHP version installed 5.4. It is planned to support PHP 5.3, 5.5, 5.6 and 7
* Shell scipt for securing MySQL
* Addition DB - SQLite, PostgreSQL support
* Shell script for building vhosts. Sites are defined in YAML file and sciprt build the vhosts, set sync and log folders, etc.