#!/bin/bash

# Update package list and upgrade all packages
sudo apt-get update
sudo apt-get upgrade -y

# Install Apache2
sudo apt-get install -y apache2 libapache2-mod-fcgid


# Install MySQL 
sudo apt-get install -y mysql-server
sudo systemctl enable mysql-server



# Install PHP prerequisites packages
sudo apt-get install -y lsb-release \
                   ca-certificates \
                   software-properties-common \
                   apt-transport-https

# Add PHP repository
sudo add-apt-repository -y ppa:ondrej/php


# Install PHP 8.0 and common extensions
sudo apt-get install -y php8.0 php8.0-cli php8.0-fpm php8.0-mysql php8.0-zip \
                   php8.0-gd php8.0-mbstring php8.0-curl php8.0-xml php8.0-bcmath \
                   php8.0-intl php8.0-soap php8.0-opcache libapache2-mod-php php-mysql


# Install PHP Wordpress plugins
sudo apt install php-curl php-gd php-mbstring php-xml php-xmlrpc \
                 php-soap php-intl php-zip



# Restart Apache 
sudo systemctl restart apache2 php8.0-fpm


# Install Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
sudo php -r "unlink('composer-setup.php');"


# Restart Apache
sudo systemctl restart apache2


