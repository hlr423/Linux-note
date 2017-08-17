#!/bin/bash
#description
#version 0.1
#author gaomeng
#date 20160816
read -p "please input line number: " sumline
line=1
num=$sumline
until [ $num -eq 0 ] ;do
	num1=$[sumline-line]
	until [ $num1 -eq 0 ]; do
		echo -n " "
		let num1--
	done
	num2=$[2*line-1]
	until [ $num2 -eq 0 ]; do
		echo -n "*"
		let num2--
	done
	echo 
	let line++
	let num--
done
line=$[sumline-1]
num=$[sumline-1]
until [ $num -eq 0 ] ;do
	num1=$[sumline-line]
	until [ $num1 -eq 0 ]; do
		echo -n " "
		let num1--
	done
	num2=$[2*line-1]
	until [ $num2 -eq 0 ]; do
		echo -n "*"
		let num2--
	done
	echo 
	let line--
	let num--
done
