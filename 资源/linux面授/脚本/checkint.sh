#!/bin/bash
#description
#version 0.2
#author gm
#date 20160812

read -p "please ont number of int: " num

testnum=$num
echo $num | grep -qE "^[0-9]+$"
if [ $? -eq 0 ] ; then
	if [ $num -ne 0 ] ; then
		echo "$num is int type."
	else
		echo "$num in not int type."
	fi
else
	echo "$num in not int type."
fi

