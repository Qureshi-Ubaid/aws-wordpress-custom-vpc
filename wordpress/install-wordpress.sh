#!/bin/bash
set -e
echo "Downloading latest WordPress..."
curl -O https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
cp -r wordpress/* /var/www/html/
rm -rf wordpress latest.tar.gz
echo "WordPress files downloaded successfully."
