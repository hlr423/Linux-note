#!/bin/bash
#desvription Input 1-N sum
#version 0.1
#author gaomeng
#date 20160816
read -p "Input one number: " id
for num in $(seq $id) ;do
	let sum+=num
done
echo "1 and $id sum: $sum"
