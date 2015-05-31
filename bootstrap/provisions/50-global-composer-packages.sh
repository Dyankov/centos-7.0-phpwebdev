installComposerPackage laravel/installer
installComposerPackage phpspec/phpspec
installComposerPackage phpunit/phpunit

# Updates Global Packages
echo -e "\e[0;33mUpdating composer global packages...\e[0m"
/usr/local/bin/composer global update >/dev/null 2>&1