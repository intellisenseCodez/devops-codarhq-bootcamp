#!/bin/bash

DATABASE_PASS='admin123'

sudo yum update -y
sudo yum upgrade -y

# add EPEL repository
sudo yum install epel-release -y  # provides additional software packages

# installing mariadb
sudo yum install mariadb-server -y

# start and enable mariadb service
sudo systemctl start mariadb
sudo systemctl enable mariadb

sudo systemctl status mariadb

# set up database and user
sudo mysql -u root -e "DROP DATABASE IF EXISTS accounts;"
sudo mysql -u root -e "CREATE DATABASE accounts;"

sudo mysql -u root -e "CREATE USER 'admin'@'%' IDENTIFIED BY 'admin1234';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON accounts.* TO 'admin'@'%';"



# get db_backup.sql from directory then input in database accounts
sudo mysql -u root -p"$DATABASE_PASS" accounts < /vagrant/src/main/resources/db_backup.sql

sudo mysql -u root -e "FLUSH PRIVILEGES;"

# Restart mariadb-server
sudo systemctl restart mariadb

# Starting the firewall and allowing the mariadb to access from port no. 3306
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --get-active-zones
sudo firewall-cmd --zone=public --add-port=3306/tcp --permanent
sudo firewall-cmd --reload
sudo systemctl restart mariadb