#!/bin/bash
apt update

# Install prerequisites for DVWA 
apt-get -y install apache2 mariadb-server php php-mysqli php-gd libapache2-mod-php

# Database
sudo mysqladmin create dvwa

sudo mysql dvwa << EOF
create user dvwa@localhost identified by 'p@ssw0rd';
grant all on dvwa.* to dvwa@localhost;
flush privileges;
EOF
