#!/bin/bash
#description show max shiyonglv of Hard disk
#version 0.1
#author gm
#date 20160810

echo "begin find max shiyonglv of Hard disk"

#find Hard disk is used most

echo "Hard disk is used most :`df | grep -v  "^/dev/sr0" | tr -s ' ' | cut -d' ' -f5 | cut -d% -f1 | sort -nr | head -1`"

echo "END-------------------------"
