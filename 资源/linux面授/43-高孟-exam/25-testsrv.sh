#!/bin/bash
#description: test progrom
#version 0.1
#author gaomeng
#date 2016903
#
start() {
	if [ -e /var/lock/subsys/$prog ]; then
		echo "Warning:$prog is starting."
	else
		touch /var/lock/subsys/$prog && echo "$prog start."
	fi
}
stop() {
	if [ -e /var/lock/subsys/$prog ]; then
		rm /var/lock/subsys/$prog && echo "$prog stop."
	else
		echo "Warning:$prog is stopped."
	fi
}
status() {
	if [ -e /var/lock/subsys/$prog ]; then
		echo "$prog is running."
	else
		echo "$prog is stopped."
	fi
}

prog=$(basename $0)
if [ $# -lt 1 ];then
	echo "Usage: $prog {start|stop|restart|status}."
	exit 1
fi
if [ ! -e /var/lock/subsys ] ;then
	mkdir /var/lock/subsys
fi
case $1 in
	start)
		start;;
	stop)
		stop;;
	restart)
		stop
		start;;
	status)
		status;;
	*)
		echo "Usage: $prog {start|stop|restart|status}."
		exit 2
		;;
esac
