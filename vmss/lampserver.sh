#!/bin/bash

# THIS SCRIPT WORKS WITH CentOS 7.3 ONLY

# @todo verify that the server is CentOS 7.3

cd /tmp
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y ./epel-release-latest-7.noarch.rpm

yum install -y nginx
curl https://raw.githubusercontent.com/amitkriplani/azure-scripts/master/vmss/nginx-default.conf > /etc/nginx/conf.d/default.conf
curl https://raw.githubusercontent.com/amitkriplani/azure-scripts/master/vmss/nginx.conf > /etc/nginx/nginx.conf
service nginx start

rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

yum install -y php56w

yum install -y php56w-fpm
curl https://raw.githubusercontent.com/amitkriplani/azure-scripts/master/vmss/php-fpm-www.conf > /etc/php-fpm.d/www.conf
mkdir /var/www/default
curl https://raw.githubusercontent.com/amitkriplani/azure-scripts/master/vmss/default-index.php > /var/www/default/index.php
service php-fpm start
