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