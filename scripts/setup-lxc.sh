echo "Installing lxc"
sudo apt-get install -y lxc

echo "Setup lxc-net"
sudo bash -c "cat > /etc/default/lxc-net" << EOF 
USE_LXC_BRIDGE="true"
EOF