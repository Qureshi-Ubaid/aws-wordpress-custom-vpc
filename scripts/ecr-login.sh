#!/bin/bash
REGION="us-east-1"
echo "Logging into AWS ECR in region $REGION..."
aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com
