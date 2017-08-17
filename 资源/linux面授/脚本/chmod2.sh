#/bin/bash
#description give one *.sh add x
#version 0.1
#author gm
#date 20160810

read -p "input one file lujing" file
[ ! -e $1 ] && ( echo "please one true file lujing" ; exit 20 )
echo `basename $1` | grep '\.sh$' &> /dev/null && ( chmod +x  `basename $1` ; echo "chmod $1 add x" || echo "this file is not .sh" 
