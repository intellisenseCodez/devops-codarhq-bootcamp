#!/bin/bash

# Update system and install Nginx
sudo yum update -y
sudo yum install nginx -y

# Create Nginx config directory structure (CentOS/RHEL style)
sudo mkdir -p /etc/nginx/conf.d

# Create the vproapp configuration
cat <<EOT | sudo tee /etc/nginx/conf.d/vproapp.conf
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

# Remove default CentOS Nginx config if it exists
sudo rm -f /etc/nginx/conf.d/default.conf

# Validate Nginx configuration
sudo nginx -t

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl restart nginx

echo "Nginx configuration for vproapp has been set up successfully"