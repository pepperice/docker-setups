#!/usr/bin/env bash

# Enable support for UTF-8
apt-get update
apt-get install -y apt-utils language-pack-en-base
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Install tools for PPA
apt-get install -y software-properties-common
add-apt-repository -y ppa:ondrej/php
apt-get update

# Install Apache, PHP + extensions, and Vim.
apt-get install -y apache2 php5.6 php5.6-zip php5.6-mcrypt php5.6-opcache php5.6-gd php5.6-mbstring php5.6-pgsql vim

# Install Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/bin/composer

# Replace the 000-default.conf in apache 2 sites-available directory.
mv /provisioning/apache/000-default.conf /etc/apache2/sites-available/000-default.conf

# Enable Apache rewrite module
a2enmod rewrite
