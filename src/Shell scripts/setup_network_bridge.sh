#!/bin/bash

read -p "Do you want to use the default default gateway?(y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuff
    echo "Using your 192.168.1.50 for default gateway"
    IP="192.168.1.50"
else
	read -p "Enter ip address: " IP
fi

echo "Create network bridge"
sudo brctl addbr br0

echo "Add ethernet interfaces to bridge"
sudo brctl addif br0 eth0
sudo brctl addif br0 eth1

echo "Set ip for bridge interface to 192.168.1.2"
sudo ifconfig br0 192.168.1.2 netmask 255.255.255.0 up

echo "Set default gateway"
sudo route add default gw $IP br0
