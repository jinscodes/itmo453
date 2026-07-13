#!/bin/bash

# Update systems
sudo apt update
sudo apt upgrade -y

# Install packages
sudo apt install nginx ufw openssh-server htop -y

# Configure services
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl enable ssh
sudo systemctl start ssh

# Create users
sudo adduser labadmin
sudo usermod -aG sudo labadmin

# Configure firewalls
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw --force enable

# Generate logs
sudo mkdir -p /var/log/lab2
echo "$(date): Lab 2 script completed" | sudo tee -a /var/log/lab2/script.log

