#!/bin/bash
echo "Building Docker Images for WordPress and Database..."
docker build -t wordpress-custom ./wordpress
docker build -t database-custom ./database
