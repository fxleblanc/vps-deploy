echo "Creating the jupyter container"
sudo lxc-create --name jupyter -t debian

echo "Change the default jupyter container configuration"
sudo bash -c "cat > /var/lib/lxc/jupyter/config" << EOF 
# Jupyter container configuration
lxc.network.type = veth
lxc.network.link = lxcbr0
lxc.network.flags = up
lxc.network.hwaddr = 00:16:3e:b0:a7:8e
lxc.network.ipv4 = 10.0.3.2
lxc.rootfs = /var/lib/lxc/jupyter/rootfs
lxc.rootfs.backend = dir

# Common configuration
lxc.include = /usr/share/lxc/config/debian.common.conf

# Container specific configuration
lxc.tty = 4
lxc.utsname = jupyter
lxc.arch = amd64

# Autostart
lxc.start.auto = 1
EOF

echo "Staring jupyter container"
sudo lxc-start --name jupyter -d