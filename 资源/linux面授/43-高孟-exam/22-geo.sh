#/bin/bash
#description : Input An isosceles triangle
#version 0.1
#author gaomeng
#date 20160903
#
read -p "The script inout An isosceles triangle. Input line number: " line
until echo $line | grep -q "^[0-9]*$" ; do
	read -p "You number is error. Please input line number: " line
done

i=1
j=$line

until [ $i -gt $line ]; do
	let num=line-j
	until [ $num -eq 0 ]; do
		echo -en " "
		let num--
	done
	let num=2*j-1
	until [ $num -eq 0 ]; do
		echo -en "\033[31m*\033[0m"
		let num--
	done
	echo 
	let j--
	let i++
done

unset i
unset j
unset num
