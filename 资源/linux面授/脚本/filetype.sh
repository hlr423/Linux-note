#!/bin/bash
#description
#version 0.1
#author gm
#date 20160812

read -p "please file path: " path
if [ ! -e $path ] ;then
	echo "$path is not exist."
elif [ -h $path ] ;then
	echo "$path is link file."
elif [ -f $path ] ;then
	echo "$path is common file."
elif [ -d $path ] ;then
	echo "$path is dir file"
else 
	echo "$path is other file."
fi
