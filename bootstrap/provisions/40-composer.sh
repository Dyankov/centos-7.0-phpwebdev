#!/bin/sh

if [ ! -f /usr/local/bin/composer ]; then
    curl -sS https://getcomposer.org/installer | php -- --filename=composer
    sudo mv composer /usr/local/bin/composer
else
	echo "composer already installed. Update it."
	sudo /usr/local/bin/composer self-update
fi