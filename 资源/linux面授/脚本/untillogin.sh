#!/bin/bash
#description 
#version 0.1
#author gaomeng
#date 20160816
read -p "please one username: " user
until who | grep "^$user\>" &> /dev/null ;do
	sleep 3
done

echo "$user is logining system."

logintime=`date +%F-%T`
host_ip=`who | grep "^$user\>" | cut -d"(" -f2 | cut -d")" -f1`
echo "$user is login on $host_ip,time is $logintime." >> /var/log/login.log

ttynum=`who | grep "^$user\>" | tr -s ' '| cut -d' ' -f2`

until ! who | grep "^$user\>" &> /dev/null ;do
	echo "please logout system." > /dev/$ttynum
	sleep 1
done

echo "$user is logout system."
