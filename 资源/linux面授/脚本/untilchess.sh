#!/bin/bash
#description Input chess
#version 0.1
#author goameng
#date 20160816
i=8
until [ $i -eq 0 ];do
	j=8
	until [ $j -eq 0 ];do
		sum=$[i+j]
		if `let sum%=2` ;then
			echo -en "\033[41m  \033[0m"
		else
			echo -en "\033[42m  \033[0m"
		fi
		let j--
	done
	echo
	let i--
done
