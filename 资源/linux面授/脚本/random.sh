#!/bin/bash
#author goameng
#version 0.2
#description: random 10 number. Input max min number
max=$RANDOM
min=$max
echo $max
i=9
while [ $i -gt 0 ];do
	num=$RANDOM
	echo $num
	if [ $num -gt $max ];then
		max=$num;
	elif [ $num -lt $min ];then
		min=$num;
	fi
	let i--
done
echo "max number is: $max"
echo "min number is: $min"
