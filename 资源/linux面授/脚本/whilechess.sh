#!/bin/bash
#version 0.1
#author gaomeng
#description pintf chess
#date 20160816
i=8
while [ $i -gt 0 ];do
	j=8
	while [ $j -gt 0 ];do
		sum=$[$i+$j]
		if `let sum%=2`;then
			echo -ne "\033[41m  \033[0m"
		else
			echo -ne "\033[42m  \033[0m"
		fi
		let j--
	done
	echo 
	let i--
done
