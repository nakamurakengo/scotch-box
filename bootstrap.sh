#!/bin/bash

## apache ##

sudo a2enmod proxy_http
sudo rm /etc/apache2/sites-enabled/*

## enable necessary config ##

# sudo ln -s /etc/apache2/sites-available/default.conf /etc/apache2/sites-enabled/default.conf
sudo ln -s /etc/apache2/sites-available/middleman.conf /etc/apache2/sites-enabled/middleman.conf
# sudo ln -s /etc/apache2/sites-available/scotchbox.local.conf /etc/apache2/sites-enabled/scotchbox.local.conf

sudo service apache2 restart

# remove unnecessary services
sudo rm /etc/init.d/mongod
sudo rm /etc/init.d/postgresql
sudo rm /etc/init.d/php5-fpm
sudo rm /etc/init.d/redis_6379
