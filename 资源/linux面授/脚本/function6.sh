#!/bin/bash
#description hanoi game
#version 0.2
#author gaomeng
#date 20160818
#
i=1
move() {
	echo -e "$i)\t$1 plate from $2 to $3."
	let i++
}
hanoi() {
	if [ $1 -eq 1 ]; then
		move $1 $2 $4
	else
		hanoi $[$1-1] $2 $4 $3
		move $1 $2 $4
		hanoi $[$1-1] $3 $2 $4
	fi
}

read -p "Please input move plate numbers: " num
until echo $num | grep -qE "^[0-9]+$";do
	read -p "your number error, Input move plate number: " num
done

hanoi $num A B C
