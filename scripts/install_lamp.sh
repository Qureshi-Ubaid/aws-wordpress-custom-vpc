#!/bin/bash
sudo dnf update -y
sudo dnf install -y httpd mariadb105-server php php-mysqlnd php-gd php-xml
sudo systemctl start httpd mariadb
sudo systemctl enable httpd mariadb
