#!/bin/bash
#description 1 until 100 sum.
#version 0.1
#author gm
#date 20160810

echo  "jisuan 1 until 100 sum."


num=`seq 1 100`
num1=`echo $num | tr -t ' ' '+'`
sum=$[$num1]

echo "1 until 100 sum is :$sum"

#unset

unset sum
