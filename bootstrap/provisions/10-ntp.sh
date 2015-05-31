# Used to sync server time.
installPackage ntp
sudo systemctl start ntpd
sudo systemctl enable ntpd