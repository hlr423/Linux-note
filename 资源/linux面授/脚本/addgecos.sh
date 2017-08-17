#!/bin/bash
#description if user no gecos add something to gecos
#version 0.1
#author gaomeng
#date 20160819
#
while read line ; do
	gecos=`echo $line | cut -d: -f5 `
	if [ -z $gecos ] &> /dev/null ; then
		username=`echo $line | cut -d: -f1 `
		usermod -c "$username 62985600" $username
		echo "$username gecos is changed."
	fi
done < /etc/passwd
