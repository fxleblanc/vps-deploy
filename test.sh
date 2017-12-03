#!/bin/sh
#
# Test script
#
ssh -p 2222 -i ~/.vagrant.d/insecure_private_key -o 'IdentitiesOnly=yes' vagrant@127.0.0.1 'bash -s' < main.sh