#!/bin/bash
clear

echo -e "\n\n ########### SSH Password Base Login Script ###########\n\n"

echo -e "Host Machine : $HOSTNAME \n"
echo -e "Currently Logged in user : `whoami` \n\n"
echo -e "Enter Username of Remote Machine : \n"
read username
echo -e -n "\nEnter IP Address of Remote Machine in This Format: 192.122.1.1 \n"
read ip

echo "**********************************************************"
echo "*                                                        *"
echo "* Connecting To Remote Machine: $ip                       "
echo "*                                                        *"
echo "**********************************************************"

ssh $username@$ip
