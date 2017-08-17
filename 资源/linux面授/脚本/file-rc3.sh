#!/bin/bash
#description 
#version 0.1
#author gaomeng
#date 20160816
for file in `ls /etc/rc.d/rc3.d`;do
	if echo $file | grep -q "^S" ;then
		echo "$file start"
	elif echo $file | grep -q "^K" ;then
		echo "$file stop"
	fi

done
