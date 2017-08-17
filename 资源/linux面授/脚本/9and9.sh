#!/bin/bash
#description Input 9*9
#version 0.1
#author gaomeng
#date 20160816
for i in {1..9};do
	for j in $(seq 1 $i) ;do
		echo -n -e "$j*$i=$[i*j]\t"
	done
	echo
done
