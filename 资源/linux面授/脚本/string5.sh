#!/bin/bash
#description
#version 0.1
#author gaomeng
#date 20160820
#
declare -a string
string[0]=0
string[1]=1
read -p "Please input month number: " num
until echo $num | grep -qE "^[0-9]+$";do
	read -p "your number error, Input month number: " num
done
if [ $num -eq 0 ];then
	echo "sum is ${sting[0]}"
elif [ $num -eq 1 ];then
	echo "sum is ${sting[1]}"
else
	i=2
	while [ $i -le $num ];do
		let string[$i]=${string[$i-1]}+${string[$i-2]}
		let i++
	done
	echo "sum is ${string[$num]}"
fi
