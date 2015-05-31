Vagrant CentOS Web VM
=====================

This is a Vagrant CentOS based Virtual Machine setup.


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

This is going to install CentOS 7 based VM for you with Apache, MySQL, PHP, NodeJS, Gulp, Grunt, Composer, Git, SVN and other web related packages.

# Update

After update of your `settings.yaml` file or repo update run the following command to update VM:

```
vagrant reload --provision
```