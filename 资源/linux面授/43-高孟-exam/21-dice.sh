#!/bin/bash
#description : One hundred dice
#version 0.1
#author gaomeng
#data 20160903
#
declare -i num1
declare -i num2
declare -i num3
declare -i num4
declare -i num5
declare -i num6
i=100
until [ $i -eq 0 ]; do
	num=$[$RANDOM%6+1]
	case $num in
		1) let num1++;;
		2) let num2++;;
		3) let num3++;;
		4) let num4++;;
		5) let num5++;;
		6) let num6++;;
		*) continue;;
	esac
	let i--
done

echo "number 1 time is $num1."
echo "number 2 time is $num2."
echo "number 3 time is $num3."
echo "number 4 time is $num4."
echo "number 5 time is $num5."
echo "number 6 time is $num6."
#echo "sum number time is $[num1+num2+num3+num4+num5+num6]."

unset num1
unset num2
unset num3
unset num4
unset num5
unset num6
unset num
unset i
