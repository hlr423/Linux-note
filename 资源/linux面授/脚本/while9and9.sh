#!/bin/bash
#description Input 9*9
#version 0.1
#author gaomeng
#date 20160816
i=1
while [ $i -le 9 ] ; do
	j=1
	while [ $j -le $i ] ; do
		echo -ne "$j*$i=$[$j*$i]\t"
		let j++
	done
	echo
	let i++
done
