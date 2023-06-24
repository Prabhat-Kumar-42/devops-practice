#!/bin/bash

#*********** script to test pinging to other nodes *********#
#------ This script is written before learning about playbooks ------#


# this is the vagrant machine where I have not set my delafult user-name
# so gotta acccess with -u user-name command
echo accessing arch node
echo
ansible 192.168.10.105 -m ping -i inventory -u vagrant

# file with delafult user-name
echo
echo accessing parrot node
ansible 192.168.10.107 -m ping -i inventory
