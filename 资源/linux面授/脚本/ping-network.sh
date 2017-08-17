#!/bin/bash
#description
#version 0.1
#author gm
#date 20160815

#read -p "Input one ip address: " ip_addr
ip_addr=$1
echo $ip_addr | grep -qE "^(\<([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\>.){3}\<([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\>$"  
if [ $? -eq 0 ];then
	echo "this is a useful ip" 
else
	echo "this is not useful ip"
	exit 20
fi
ip=`echo $ip_addr | cut -d. -f1,2,3 `
for IP in {0..255};do
	ping -c1 -W1 $ip.$IP &> /dev/null && echo "$ip.$IP is up" 
done
