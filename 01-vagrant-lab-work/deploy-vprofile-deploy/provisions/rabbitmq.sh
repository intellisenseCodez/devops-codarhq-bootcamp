#!/bin/bash

sudo yum update -y

# add EPEL repository
sudo yum install epel-release -y

# install the memcache service
sudo yum install memcached -y

sudo yum install wget -y

cd /tmp/

# downloaded RPM
sudo wget https://packages.erlang-solutions.com/erlang-solutions-2.0-1.noarch.rpm


# installing the downloaded RPM
sudo sudo rpm -Uvh erlang-solutions-2.0-1.noarch.rpm

# installing erlang
sudo yum -y install erlang socat


# Downloading RabbitMQ 
sudo curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | sudo bash

# install the RabbitMQ server
sudo yum install rabbitmq-server -y

sudo systemctl start rabbitmq-server
sudo systemctl enable rabbitmq-server
sudo systemctl status rabbitmq-server

# Configure RabbitMQ
sudo sh -c 'echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config'

# add user with username and password <test>
sudo rabbitmqctl add_user test test

# add a tag for user created
sudo rabbitmqctl set_user_tags test administrator

# enable the Management Plugin to use a web-based interface to administer RabbitMQ.
sudo rabbitmq-plugins enable rabbitmq_management


sudo systemctl restart rabbitmq-server