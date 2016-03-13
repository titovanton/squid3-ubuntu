#!/usr/bin/env bash

# hostname
hostname squid3
echo "127.0.0.1 squid3" >> /etc/hosts
echo "squid3" > /etc/hostname

# .bashrc
echo "cd /etc/squid3" >> /home/vagrant/.bashrc

apt-get update
apt-get upgrade -y
apt-get install -y squid
apt-get install -y apache2-utils

service squid3 stop
mv /etc/squid3/squid.conf /etc/squid3/squid.conf.default
cp /vagrant/squid.conf /etc/squid3/
cp /vagrant/make_pwd.sh /etc/squid3/
echo "RUN: vagrant ssh"
echo "INVOKE THEN: source ./make_pwd.sh"
