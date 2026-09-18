#!/bin/bash
set -e
echo "Starting Apache Web Server..."
exec apache2-foreground
