#!/usr/bin/env bash

echo " This bash script helps to setup a simple LEMP server on the fly!"
echo " This setup would install the following in your current server:"
echo " 1. Ngnix"
echo " 2. PHP 7.0"
echo " 3. MariaDB"
echo " 4. cURL "
echo " 5. Git"
echo " Let's Begin the setup!"

# Update the system
# --------------
# Downloads the package lists from the repositories
# and "updates" them to get information on the newest
# versions of packages and their dependencies
sudo apt-get update
# Run upgrade with the updated packages
sudo apt-get -y upgrade

# Install Nginx
sudo apt-get install -y nginx

# Install PHP5-FPM
sudo apt-get install -y php7.0-fpm

# Configure PHP Processor
sed -i s/\;cgi\.fix_pathinfo\s*\=\s*1/cgi.fix_pathinfo\=0/ /etc/php7.0/fpm/php.ini
service php7.0-fpm restart

# Create phpinfo page to test PHP Installation
echo "<?php phpinfo(); ?>" > /usr/share/nginx/html/info.php

# Install MySQL
sudo apt-get install -y mariadb-server mariadb-client
# Setup required database structure
mysql_install_db

# PHP stuff
sudo apt=get install -y php7.0-cli php7.0-curl php7.0-dev php7.0-zip php7.0-fpm php7.0-gd php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-mbstring php7.0-opcache

# Install cURL
apt-get install -y curl

# Install Git
apt-get install -y git

# Install PHPMyAdmin for GUI database management
apt-get install -y phpmyadmin
# Make PHPMyAdmin available as http://localhost/phpmyadmin
ln -s /usr/share/phpmyadmin /usr/share/nginx/html/phpmyadmin

