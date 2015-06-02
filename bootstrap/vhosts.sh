# Include Shell Helper Functions
. /vagrant/bootstrap/shell/functions.sh

VHOSTS=('site1.com' 'site2.com')

# Make sure that the web server has permissions to write.
sudo chmod -R 755 /var/www

# Creating folders for every vhosts inside the /var/www/
for VHOST in ${VHOSTS[@]}
do
    createVhostFolder $VHOST
done

# Make sure that our Virtual Host configuration directories are presented.
if [ ! -d /etc/httpd/sites-available ]; then
    sudo mkdir /etc/httpd/sites-available
fi
if [ ! -d /etc/httpd/sites-enabled ]; then
    sudo mkdir /etc/httpd/sites-enabled
fi