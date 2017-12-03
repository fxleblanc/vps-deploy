#!/bin/sh
#
# Test script
#
tags=$1
if [ -z $tags ]
then
    ansible-playbook -vv -i inventory/test playbook.yml
else
    ansible-playbook -vv --skip-tags $tags -i inventory/test playbook.yml
fi