#!/bin/bash
#desricptino auto make dir of configue make make install
#version 0.1
#author gaomeng
#date 20160822
#
read -p "Please input service dir path: " dir
if [ -e $dir ];then
	echo "dir is exist."
else
	echo "dir is not exist."
	exit
fi

bindir=$dir/bin
libdir=$dir/lib
includedir=$dir/include
mandir=$dir/man

if [ -e $bindir ];then
	echo "bin dir is exist."
else
	echo "bin dir is not exist."
	exit
fi

if [ -e $libdir ];then
	echo "lib dir is exist."
else
	echo "lib dir is not exist."
	exit
fi

if [ -e $includedir ];then
	echo "include dir is exist."
else
	echo "include dir is not exist."
	exit
fi

if [ -e $mandir ];then
	echo "man dir is exist."
else
	echo "man dir is not exist."
	exit
fi

name=`basename $dir`
if [ -e /etc/profile.d/$name.sh ]; then
	echo "/etc/profile.d/${name}.sh is exist."
	exit
else
	touch /etc/profile.d/${name}.sh 
	echo "PATH=$bindir:$PATH" >> /etc/profile.d/${name}.sh 
	source /etc/profile.d/${name}.sh 
	echo "/etc/profile.d/${name}.sh add success."
fi

if [ -e /etc/ld.so.conf.d/${name}.conf ]; then
	echo "/etc/ld.so.conf.d/${name}.conf is exist."
	exit
else
	#touch /etc/profile.d/${name}.conf 
	echo "$libdir" >> /etc/ld.so.conf.d/${name}.conf
	ldconfig
	echo "/etc/ld.so.conf.d/${name}.conf add success."
fi

if [ -e /usr/include/${name} ]; then
	echo "/usr/include/${name} is exist."
	exit
else
	ln -sv $includedir /usr/include/${name}
	echo "/usr/include/${name} add success."
fi

echo "MANPATH $mandir" >> /etc/man.config
echo "$mandir add in /etc/man.config."
