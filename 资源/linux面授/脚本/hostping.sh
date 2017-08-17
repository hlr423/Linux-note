#!/bin/bash
#description ping ip address
#version 0.1
#author gm
#date 20160810

#get one arg and ping arg 

ping $1 -c1 -W1 &> /dev/null && echo "$1 is up" || echo "$1 is down"
