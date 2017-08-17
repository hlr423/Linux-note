#!/bin/bash

function PING()
{
	(ping -W1 -c1 $1 >/dev/null 2>&1
		if [ $? -eq 0 ];then
			echo "$1 is up." >> /root/bin/net.txt
   		fi
	)&
}

export j
export i
for i in `seq 1 254`
	do
	PING 10.1.${j}.$i
	done
	wait
done&
