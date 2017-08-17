#!/bin/bash
#description file space lines
#version 0.1
#author gm
#date 20160810

#file space lines

[ $# -lt 1 ] &&  echo "please give one argments or more "  || echo " `basename $1` space lines is :`grep -c '^[[:space:]]*$' $1 `" 
