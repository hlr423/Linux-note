#!/bin/bash
#description Input 9*9
#version 0.1
#author gaomeng
#date 20160816
i=1
until [ $i -eq 10 ]; do
	j=1
	until [ $j -gt $i ];do
		echo -en "$j*$i=$[$i*$j]\t"
		let j++
	done
	echo 
	let i++
done
