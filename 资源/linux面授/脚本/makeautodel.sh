#!/bin/bash
#description
#version 0.1
#auther gaomeng
#date 20160823
#
read -p "Please input service dir path: " dir
if [ -e $dir ];then
	echo "dir is exist."
else
	echo "dir is not exist."
	read -p "you want go or exit,please input <y|n>" ans
	case $ans in
	[yY]|[yY][sS][eE])
		;;
	[nN]|[nN][oO])
		exit;;
	*)
		exit;;
	esac
fi

name=`basename $dir`
if [ -e /etc/profile.d/$name.sh ]; then
	echo "/etc/profile.d/${name}.sh is exist."
	rm -f /etc/profile.d/${name}.sh
	echo "/etc/profile.d/${name}.sh is deleted."
else
	echo "/etc/profile.d/${name}.sh is not exist."
fi

if [ -e /etc/ld.so.conf.d/${name}.conf ]; then
	echo "/etc/ld.so.conf.d/${name}.conf is exist."
	rm -f /etc/ld.so.conf.d/${name}.conf
	echo "/etc/ld.so.conf.d/${name}.conf is deletes."
else
	echo "/etc/ld.so.conf.d/${name}.conf is not exist."
fi

if [ -e /usr/include/${name} ]; then
	echo "/usr/include/${name} is exist."
	rm -f /usr/include/${name}
	echo "/usr/include/${name} is deletes."
else
	echo "/usr/include/${name} is exist."
fi

echo "$mandir add in /etc/man.config. please vim /etc/man.config and deleted."
rm -rf $dir