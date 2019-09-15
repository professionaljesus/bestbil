#!/bin/bash

IP=$(echo $SSH_CLIENT | awk '{ print $1}')

read -p "Do you want to use $IP as default gateway?(y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuff
    echo "Using your IP($IP) for default gateway"
else
	read -p "Enter ip address: " IP
fi


# Set default gateway ip to the currently connected ssh user

echo "Setting default gateway"
ip route change default via $IP dev eth0 proto static
echo "$IP set as default gateway"

# If the bridge is up set the correct default gateway
if /sbin/ethtool br0 | grep -q "Link detected: yes"; then
    echo "Bridge detected"
    route add default gw $IP br0
fi
