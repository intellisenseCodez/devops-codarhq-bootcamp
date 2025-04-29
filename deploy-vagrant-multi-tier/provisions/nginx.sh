#!/bin/bash

# adding repository and installing nginx		
sudo yum update
sudo yum install nginx -y
cat <<EOT > vproapp
upstream vproapp {

 server app01:8080;

}

server {

  listen 80;

location / {

  proxy_pass http://vproapp;

}

}

EOT

# moving vproapp file into the sites-available
sudo mv vproapp /etc/nginx/sites-available/vproapp
#removing the default nginx in the sites-enabled
sudo rm -rf /etc/nginx/sites-enabled/default
# link the vproapp to the sites-enabled
sudo ln -s /etc/nginx/sites-available/vproapp /etc/nginx/sites-enabled/vproapp

#starting nginx service and firewall
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl restart nginx