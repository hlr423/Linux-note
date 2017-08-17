#!/bin/bash
#description add 10 new users
#version 0.1
#author gaomeng
#date 20160816
for id in {1..10};do
	if id user$id &> /dev/null ;then
		echo "user$id is exist."
	else
		useradd user$id
		echo user$id | passwd --stdin user$id &> /dev/null
		echo "Add user$id succeed."
	fi
done
for id in {1..10};do
		userdel -r user$id
#		echo "del user$id succeed."
done
