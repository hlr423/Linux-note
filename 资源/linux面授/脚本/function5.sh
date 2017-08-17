#!/bin/bash
#description series of rabbit
#version 0.3
#author gaomeng
#date 20160818
#
series() {
	if [ $1 -eq 0 ]; then
		sum=0
	elif [ $1 -eq 1 ];then
		sum=1
	else
		let sum=`series $[$1-1]`+`series $[$1-2]`
	fi
	echo "$sum"
}

read -p "Please input month number: " num
until echo $num | grep -qE "^[0-9]+$";do
	read -p "your number error, Input first number: " num
done
series $num
