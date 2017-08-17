#!/bin/bash
#description tongji etc var usr file numbers
#version 0.1
#author gm
#date 20160810

#get etc var usr file numbers

file_etc=`ls -l /etc | wc -l` 
file_var=`ls -l /var | wc -l`
file_usr=`ls -l /usr | wc -l` 

#sum file numbers

file_sum=$[file_etc+file_var+file_usr]
echo "etc var usr sum file is : $file_sum"

#unset

unset file_sum
unset file_etc
unset file_var
unset file_usr
