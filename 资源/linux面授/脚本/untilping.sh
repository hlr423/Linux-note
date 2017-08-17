#!/bin/bash
#description ping network ip
#version 0.1
#author gaomeng
#date 20160816
ip=`echo $1 | cut -d. -f1-3`
i=254
until [ $i -eq 0 ]; do
	ping -c1 -w1 $ip.$i &> /dev/null && let upip++
	let i--
done
let downip=254-upip
echo "up host is $upip. down host is $downip"
