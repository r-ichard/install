#!/bin/sh

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
sudo apt-get install -f
sudo apt-get install google-chrome-stable

#installation du serveur lamp
sudo apt-get update
sudo apt-get install apache2
sudo apt-get install curl
sudo apt-get install mysql-server
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql php-cli php-pear php php-mbstring php-mcrypt php-mysql php-xml php-dev php-mcrypt php-curl php-cli php-json php-xdebug php-xsl php-xmlrpc php-codesniffer

#generic stuff 
sudo apt-get install xclip firefox ubuntu-restricted-extras nodejs npm nodejs-legacy ruby apache2 mysql-server  curl oracle-java*-installer  git vim  filezilla openvpn p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller vlc
sudo pecl install intl

sudo su
#composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin

#COMPOSER
mv /usr/bin/composer.phar /usr/local/bin/composer

#virtualhost creator
git clone https://github.com/RoverWire/virtualhost.git
sudo chmod +x virtualhost/virtualhost.sh
sudo cp virtualhost/virtualhost.sh /usr/local/bin/virtualhost


