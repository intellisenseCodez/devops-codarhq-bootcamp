#!/bin/bash

sudo yum update -y

# add EPEL repository
sudo yum install epel-release -y

sudo yum install wget -y

cd /tmp/
wget http://packages.erlang-solutions.com/erlang-solutions-2.0-1.noarch.rpm
sudo rpm -Uvh erlang-solutions-2.0-1.noarch.rpm
sudo yum -y install erlang socat
curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | sudo bash

sudo yum install rabbitmq-server -y

sudo systemctl start rabbitmq-server
sudo systemctl enable rabbitmq-server
sudo systemctl status rabbitmq-server

sudo sh -c 'echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config'

# add user with username and password <test>
sudo rabbitmqctl add_user test test

# add a tag for user created
sudo rabbitmqctl set_user_tags test administrator

# enable the Management Plugin to use a web-based interface to administer RabbitMQ.
sudo rabbitmq-plugins enable rabbitmq_management


sudo systemctl restart rabbitmq-server