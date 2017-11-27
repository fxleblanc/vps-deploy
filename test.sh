#!/bin/sh
#
# Test script
#
options=$1
ansible-playbook -vv $options -i inventory/test playbook.yml