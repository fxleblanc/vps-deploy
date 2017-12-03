#!/bin/sh
#
# Test script
#

# Destroy and start vagrant machine
if [ $1 == "clean" ]
then
    vagrant destroy -f && vagrant up
fi

# Deploy command
ssh -p 2222 -i ~/.vagrant.d/insecure_private_key -o 'IdentitiesOnly=yes' vagrant@127.0.0.1 'bash -s' < main.sh