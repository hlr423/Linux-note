#!/bin/bash
#description  统计远程连接的ip和连接数 
#version 0.1
#author gm
#date 20160810

echo "begin find links"

#tongji ip and links
who | tr -s ' ' | cut -d' ' -f5 | cut -d'(' -f2 | cut -d')' -f1 | sort | uniq -c | sort -rn
