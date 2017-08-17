#!/bin/bash
#description input two number, and retuen max number.
#version 0.1
#author gaomeng
#date 20160818
#
max(){
	if [ $1 -gt $2 ]; then
		echo "max number is: $1"
	else
		echo "max number is: $2"
	fi
}

read -p "Input first number: " num1
until echo $num1 | grep -qE "^[0-9]+$";do
	read -p "your number error, Input first number: " num1
done
read -p "Input second number: " num2
until echo $num2 | grep -qE "^[0-9]+$";do
	read -p "your number error, Input second number: " num2
done

max $num1 $num2
