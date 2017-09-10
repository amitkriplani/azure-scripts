#!/bin/bash

# THIS SCRIPT WORKS WITH CentOS 7.3 ONLY

# @todo verify that the server is CentOS 7.3

cd /tmp
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y ./epel-release-latest-7.noarch.rpm

yum install -y nginx
service nginx start

rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

yum install -y php56w

yum install -y php56w-fpm
service php-fpm start
