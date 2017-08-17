#!/bin/bash
#desription four arithmetic operation
#version 0.1
#author gaomeng
#date 20160818
#
operation() {
	if [ $2 == "+" ]; then
		echo "$1+$3=$[$1+$3]"
	elif [ $2 == "-" ]; then
		echo "$1-$3=$[$1-$3]"
	elif [ $2 == "x" ]; then
		echo "${1}x${3}=$[$1*$3]"
	elif [ $2 == "/" ]; then
		echo "$1/$3=$[$1/$3]"
	else
		echo "this is error symbol."
	fi
}

read -p "Input first number: " num1
until echo $num1 | grep -qE "^\-?[0-9]+$";do
	read -p "your number error, Input first number: " num1
done

i=0
until [ $i -eq 1 ];do
	read -p "Input operation symbol( please x instead of * ): " num2
	[ $num2 == "+" -o $num2 == "-" -o $num2 == "x" -o $num2 == "/" ] &> /dev/null &&	i=1
done

read -p "Input second number: " num3
until echo $num3 | grep -qE "^\-?[0-9]+$";do
	read -p "your number error, Input second number: " num3
done

operation $num1 $num2 $num3
