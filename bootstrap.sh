#!/usr/bin/env bash

apt-get update
# Installing Apache
apt-get install -y apache2

if ! [ -L /var/www ]; then
	rm -rf /var/www
	ln -sf /vagrant /var/www
fi
# Installing PHP
apt-get install -y php5 php5-mysql php5-xdebug
# Installing MySQL
apt-get install -y mysql-server-5.5
# Installing phpMyAdmin
apt-get install -y phpmyadmin
# Installing git
apt-get install -y git
# Retrieving WordPress via Git, it is faster to retrieve the ZIP
git clone https://github.com/WordPress/WordPress.git /var/www/wordpress

