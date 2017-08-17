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
third_ip=`echo $ip_addr | cut -d. -f3 `
num=`echo $ip_addr | cut -d. -f4 `
ip2=`echo $ip_addr | cut -d. -f1,2 `
ip3=`echo $ip_addr | cut -d. -f1,2,3 `
if [ $third_ip -ne 0 ];then
	for IP in {1..256};do
		ping -c1 -W1 $ip3.$num &> /dev/null && echo "$ip.$num is up" >> /root/bin/network.txt 
		let num+=1
	done
else
	for 
	for IP in {1..256};do
		ping -c1 -W1 $ip.$num &> /dev/null && echo "$ip.$num is up" >> /root/bin/network.txt 
		let num+=1
	done
fi
