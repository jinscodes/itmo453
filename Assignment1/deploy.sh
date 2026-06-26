#!/bin/bash

# Preparation
sudo apt update
sudo apt upgrade -y

# Installation
sudo apt install nginx -y
sudo apt install ufw -y
sudo apt install openssh-server -y

# Configuration
sudo systemctl enable nginx
sudo systemctl start nginx

# Deployment Templates
sudo cp templates/index.html /var/www/html/index.html
sudo cp configs/nginx-default.conf /etc/nginx/sites-available/default

# Security
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw enable

# Validation
sudo nginx -t
systemctl is-active nginx
sudo ufw status
