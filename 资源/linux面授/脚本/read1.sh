#!/bin/bash

read -p "please input one file lujing:" file
echo " $file space lines is :`grep -c '^[[:space:]]*$' $file `" 
