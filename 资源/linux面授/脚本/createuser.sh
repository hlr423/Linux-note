#!/bin/bash
#descriptio
#version 0.1
#author gm
#date 20160812

if `id $1 &> /dev/null`;then
	echo "$1 user is exist;"
else
	useradd $1
	echo "useradd $1."
	echo "$1 `id $1`"
fi
