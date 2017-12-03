echo "Installing lxc"
sudo apt-get install -y lxc

echo "Setup bridge"
HAS_BRIDGE=$(ip a | grep br0)
if [ -z "$HAS_BRIDGE" ]
then
    echo "Adding brdige"
    sudo brctl addbr br0
fi

echo "Adding interfaces"
HAS_IFS=$(sudo brctl show | tail -n1 | cut -f6 | tr -d [[:space:]])
IF="enp0s8"
if [ -z "$HAS_IFS" ]
then
    printf "Adding %s to the bridge\n" "$IF"
    sudo brctl addif br0 $IF
fi