#!/bin/bash
echo "Executing full deployment workflow..."
bash scripts/build-images.sh
bash scripts/push-images.sh
echo "Deployment complete."
