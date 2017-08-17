#!/bin/bash
#description random 10 number, Input max number and min number
#version 0.1
#author gaomeng
#date 20160816
max=$RANDOM
min=$max
i=9
echo "RANDOM 10 number is:"
echo "$max"
until [ $i -eq 0 ];do
	num=$RANDOM
	echo "$num"
	if [ $num -gt $max ]; then
		max=$num
	elif [ $num -lt $min ]; then
		min=$num
	fi
	let i--
done
echo "max number is: $max . min number is $min ."
