#!/bin/bash
set -e
echo "Initializing MySQL Database container..."
exec docker-entrypoint.sh mysqld
