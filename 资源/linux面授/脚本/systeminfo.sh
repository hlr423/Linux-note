#!/bin/bash
#descripation 
#version 0.1
#author gaomeng
#date 20160810

#显示hostname
echo "this host name is :$(hostname)"

#显示系统ip地址
ip=`ifconfig | sed -n '2p' |sed  's@.*addr:\(.*\)B.*@\1@'`
echo "ip address is : $ip"
unset ip

#显示系统版本
echo "this system is :$(cat /etc/centos-release)"

#显示内核版本
echo "this kernel is :$(uname -r)"

#显示cpu型号
echo "this cpu is :$(lscpu | grep name | sed 's@.*[[:space:]]\+@@')"

#显示内存大小
echo "this free is : $(free -m | sed -n 2p | tr -s ' ' | cut -d' ' -f2)MB"

#显示硬盘大小
echo "this Hard disk is :$(lsblk | grep '^sda' | tr -s ' ' | cut -d' ' -f4)"
