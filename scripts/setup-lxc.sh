echo "Installing lxc"
sudo apt-get install -y lxc

echo "Setup lxc-net"
sudo bash -c "cat > /etc/default/lxc-net" << EOF 
USE_LXC_BRIDGE="true"
EOF

echo "Change the default lxc configuration"
sudo bash -c "cat > /etc/lxc/default.conf" << EOF 
lxc.network.type = veth
lxc.network.link = lxcbr0
lxc.network.flags = up
lxc.network.hwaddr = 00:16:3e:xx:xx:xx
EOF