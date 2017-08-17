#!/bin/bash
#description sum 1 to 100
#version 0.1
#author gaomeng
#date 20160816
i=100
until [ $i -eq 0 ] ; do
	let sum+=i
	let i--
done
echo "1 to 100 sum=$sum"
