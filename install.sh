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
sudo apt-get install xclip firefox ubuntu-restricted-extras nodejs npm nodejs-legacy ruby apache2 mysql-server  curl oracle-java*-installer  git vim  filezilla openvpn p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller vlc htop
sudo pecl install intl

sudo su
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=/usr/local/bin/ --filename=composer
php -r "unlink('composer-setup.php');"

#npm stuff
npm install -g gulp
npm install -g bower

#phpcs phpcbf
curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
php phpcs.phar -h

curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
php phpcbf.phar -h


#virtualhost creator
git clone https://github.com/RoverWire/virtualhost.git
sudo chmod +x virtualhost/virtualhost.sh
sudo cp virtualhost/virtualhost.sh /usr/local/bin/virtualhost

#SymfonyCoding Standards
git clone git://github.com/djoos/Symfony2-coding-standard.git
sudo cp -R Symfony2-coding-standard/Symfony2 /usr/share/php/PHP/CodeSniffer/Standards/Symfony2
