#!/bin/bash
echo "Tagging and pushing images to Amazon ECR..."
docker tag wordpress-custom:latest $ECR_REPO/wordpress:latest
docker push $ECR_REPO/wordpress:latest
