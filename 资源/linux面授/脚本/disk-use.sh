#!/bin/bash
#description
#version 0.3
#author gm
#date 20160810

#disk or inode is more 80%?
echo "now: finding more 80% disk or inode."
use=`( df -i ; df ) | grep 'sd' | tr -s ' ' | cut -d' ' -f5 | cut -d% -f1 | sort -n | tail -1` 

[ $use -lt 80 ] && echo "no disk and inode use is more 80%" && exit
echo "disk or inode user is used 80% or 80%+" > /root/bin/inodeuse.txt && mail -s "System mail,this is every important." root <  /root/bin/inodeuse.txt 
echo "some disk or inode is more 80%, please into mail see."

