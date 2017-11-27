#!/bin/sh
#
# Test script
#
tags=$1
ansible-playbook -vv --skip-tags $tags -i inventory/test playbook.yml