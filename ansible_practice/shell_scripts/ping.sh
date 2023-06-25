#!/bin/bash

#*********** script to test pinging to other nodes *********#
#------ This script is written before learning about playbooks ------#


# this is the vagrant machine where I have not set my delafult user-name
# so gotta acccess with -u user-name command
echo accessing arch node
echo
ansible arch -m ping -i "../ansible_inventory/inventory" -u vagrant

# file with delafult user-name
echo
echo accessing parrot node
ansible parrot -m ping -i "../ansible_inventory/inventory"
