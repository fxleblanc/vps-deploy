#!/bin/sh
#
# Main deployment script
#
echo "Updating apt cache"
sudo apt-get update -y

# Source install scripts
source scripts/setup-lxc.sh