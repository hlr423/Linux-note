#!/bin/bash
#description tongji two file space lines
#version 0.1
#author gm
#date 20160810

#get file space lines

spaceline1=`grep "^[[:space:]]*$" $1 | wc -l | cut -d' ' -f2`
spaceline2=`grep "^[[:space:]]*$" $2 | wc -l | cut -d' ' -f2`

#sum two files lines

let sumspaceline=$spaceline1+$spaceline2
echo "space lines is : $sumspaceline"

#unset

unset spaceline1
unset spaceline2
unset sumspaceline
