#/bin/bash
#description give one *.sh add x
#version 0.1
#author gm
#date 20160810

read -p "input one file path: " file

#if file is not exist, exit

[ ! -e $file -o ! -f $file ] &&  echo "please one true file path" && exit 20 

#if file is exist, test file is .sh file and chmod +x ,else echo xinxi

echo `basename $file` | grep '\.sh$' &> /dev/null && ( chmod +x $file ; echo "chmod `basename $file` add x" ) || echo "`basename $file` is not .sh" 
