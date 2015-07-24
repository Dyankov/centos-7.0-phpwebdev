Vagrant CentOS Web Development VM
=================================

This is a Vagrant CentOS based Virtual Machine setup.

# How to install

First follow the install `vagrant` instuctions on your machine from here:

https://docs.vagrantup.com/v2/installation/index.html

This VM works with VirtualBox from Oracle so you need to install it also:

https://www.virtualbox.org/

After install of the required applications clone the repo in your home directory.

```
$ git clone git@github.com:Dyankov/centos-7.0-phpwebdev.git
```

or by https instead of ssh

```
$ git clone https://github.com/Dyankov/centos-7.0-phpwebdev.git
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

# What is included

- CentOS 7
- Apache 2.4
- MySQL (MariaDB)
- SQLite
- PostgreSQL
- MongoDB
- phpMyAdmin
- PHP 5.6
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
- phpspec
- phpunit

### NodeJS Packages

- NPM
- Grunt
- Gulp