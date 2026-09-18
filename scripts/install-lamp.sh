#!/bin/bash
echo "Installing LAMP Stack (Apache, MySQL, PHP)..."
sudo yum update -y
sudo yum install -y httpd mariadb-server php php-mysqlnd
sudo systemctl start httpd
sudo systemctl enable httpd
