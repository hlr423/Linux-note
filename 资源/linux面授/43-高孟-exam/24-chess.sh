#!/bin/bash
#decription : Input Chess
#version 0.1
#author gaomeng
#date 20160903
#
for ((i=1;i<=8;i++)) do
	for ((j=1;j<=8;j++)) do
		sum=$[$i+$j]
		if `let sum%=2`; then
			echo -ne "\033[41m  \033[0m"
		else
			echo -ne "\033[42m  \033[0m"
		fi
	done
	echo
done

unset i
unset j
