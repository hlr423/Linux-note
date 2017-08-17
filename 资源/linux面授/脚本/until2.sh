#!/bin/bash
#description
#version 0.1
#author gaomeng
#date 20160816
real_num=$[$RANDOM%10]
read -p "please one number on 1 to 10: " num
until [ $num -eq $real_num ] &> /dev/null ;do
	if [ $num -gt $real_num ] ;then
		echo "your number > realnum."
	else
		echo "your number < realnum."
	fi
	read -p "please one number on 1 to 10: " num
done	
echo "you are good."
