#!/bin/bash
#description jisuan suiji de two number and two zhijian de number sum.
#version 0.1
#author gm
#date 20160810

#input two number
echo  "pleaes two numbers; and minnumber dao maxnumber de he"
read -p "one number is:" num1
read -p "two number is:" num2

#num1 > num2 exit
[ $num1 -gt $num2 ] && echo "num1 > num2" && exit 2

#num1 until num2 sum
sum=`seq -s + $num1 $num2 | bc `

#input sum
echo "$num1 until $num2 sum  is :$sum"

