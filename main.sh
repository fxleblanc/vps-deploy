#!/bin/sh
#
# Main deployment script
#
echo "Updating apt cache"
sudo apt-get update -y

echo "Installing lxc"
sudo apt-get install -y lxc