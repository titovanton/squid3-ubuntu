#!/bin/bash

sudo htpasswd -c /etc/squid3/users proxy
sudo chmod o+r /etc/squid3/users
sudo dpkg -L squid3 | grep ncsa_auth
sudo service squid3 start
