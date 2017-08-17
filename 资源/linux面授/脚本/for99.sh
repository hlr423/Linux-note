#!/bin/bash
#description echo 9 * 9
#version 0.1
#author gaomeng
#date 20160819
#
for (( i=1 ; i<=9 ; i++ ))
do
	for (( j=1 ; j<=i ; j++ ))
	do
		echo -en "$j*$i=$[$i*$j]\t"
	done
	echo
done
	
