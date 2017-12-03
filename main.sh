#!/bin/sh
#
# Main deployment script
#
echo "Updating apt cache"
sudo apt-get update -y

source scripts/setup-lxc.sh