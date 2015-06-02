# Check if given yum package is installed
function isInstalled
{
	if yum list installed "$@" >/dev/null 2>&1;
	then
		return 0
	else
		return 1
	fi
}

function installPackage
{
	if ! isInstalled "$@"
	then
		sudo yum -y install "$@"
	else
		echo "$@ already installed"
	fi
}

function installComposerPackage
{
	if [ ! -d ~/.composer/vendor/"$@" ]; then
		/usr/local/bin/composer global require "$@"
	else
		echo "Composer package $@ is already installed globally."
	fi
}

function installNodePackage
{
	NODEROOT=`npm root -g`

	if [ ! -d $NODEROOT/"$@" ]; then
		sudo npm install -g "$@"
	else
		echo "NodeJS package $@ is already installed globally."
	fi
}

# Create a vhosts folder inside /var/www/
function createVhostFolder
{
    VHOSTPATH=/var/www/$@/public_html
    if [ ! -d $VHOSTPATH ]; then
        echo "Creating folder $VHOSTPATH for a Virtual host $@..."
        sudo mkdir -p $VHOSTPATH
        sudo chown -R $USER:$USER $VHOSTPATH
    else
        echo "Virtual Host $@ folder already exists."
    fi
}