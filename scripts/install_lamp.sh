#!/bin/bash
# Manual LAMP Installation Commands Used on Amazon Linux 2023
sudo dnf update -y
sudo dnf install -y httpd mariadb105-server php php-mysqlnd php-gd php-xml
sudo systemctl start httpd mariadb
sudo systemctl enable httpd mariadb
