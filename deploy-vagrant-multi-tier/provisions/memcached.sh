#!/bin/bash

# update packages
sudo yum update -y

sudo yum install memcached -y
sudo yum install libmemcached -y

sudo systemctl start memcached
sudo systemctl enable memcached

# check if memcached can run
sudo systemctl status memcached

sudo memcached -p 11211 -U 11111 -u memcached -d

sudo systemctl restart memcached
