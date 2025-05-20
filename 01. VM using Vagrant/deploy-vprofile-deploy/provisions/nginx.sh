#!/bin/bash

# Update system and install Nginx
sudo yum update -y
sudo yum install nginx -y

# Create Nginx config directory structure (CentOS/RHEL style)
# sudo mkdir -p /etc/nginx/conf.d

# Create the vproapp configuration
cat <<EOT | sudo tee /etc/nginx/sites-available//vproapp.conf
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

# Remove default nginx conf
sudo rm -rf /etc/nginx/sites-enabled/default

# Validate Nginx configuration
sudo nginx -t

# Create link to activate website
sudo ln -s /etc/nginx/sites-available/vproapp /etc/nginx/sites-enabled/vproapp
# Restart Nginx
sudo systemctl restart nginx

echo "Nginx configuration for vproapp has been set up successfully"