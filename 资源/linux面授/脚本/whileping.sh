#!/bin/bash
#description ping network ip
#version 0.1
#author gaomeng
#date 20160816
ip=`echo $1 | cut -d. -f1-3`
i=254
while [ $i -gt 0 ] ; do
	ping -c1 -W1 $ip.$i &> /dev/null && echo "$ip.$i is up." && let up++
	let i--
done
let down=254-up
echo "up is $up, down is $down"
