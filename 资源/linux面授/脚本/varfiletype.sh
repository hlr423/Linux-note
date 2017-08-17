#!/bin/bash
#description Input /var file type
#version 0.1
#author gaomeng
#date 20160816
for file in /var/* ;do
	if [ -h $file ] ;then
		echo "$file is link file."
	elif [ -f $file ] ;then
		echo "$file is common file."
	elif [ -d $file ] ;then
		echo "$file is dir file"
	elif [ -b $file ] ;then
		echo "$file is block file."
	elif [ -c $file ] ;then
		echo "$file is char file."
	elif [ -S $file ] ;then
		echo "$file is socket file."
	elif [ -p $file ] ;then
		echo "$file is pipe file."
	else 
		echo "$file is other file."
	fi
done

