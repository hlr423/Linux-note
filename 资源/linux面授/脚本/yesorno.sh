#!/bin/bash
#description
#version 0.2
#author gm
#date 20160812

read -p "please input yes or no: " string
case $string in
	[yY]|[yY][eE][sS])	
		echo "user input is yes.";;
	[nN]|[nN][oO])	
		echo "user input is no";;
	*)	
		echo "user input is other";;
esac 
