echo "Installing lxc"
sudo apt-get install -y lxc

echo "Setup bridge"
HAS_BRIDGE=$(ip a | grep br0)
if [ -z "$HAS_BRIDGE" ]
then
    echo "Adding brdige"
    sudo brctl addbr br0
fi