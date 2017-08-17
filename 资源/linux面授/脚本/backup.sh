#!/bin/bash
#description every day cp /etc/* to /root/. 
#version 0.1
#author gm
#date 20160810

echo "beginnig copy /etc/* file"
cp -a /etc /root/etc`date +%F`
echo "finish copy /etc/* file"
