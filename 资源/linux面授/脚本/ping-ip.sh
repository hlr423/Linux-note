#!/bin/bash

read -p "please input one useful ip:" ip_addr
echo $ip_addr | grep -E "^(\<([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\>.){3}\<([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\>$" &> /dev/null  && echo "this is a useful ip" || echo "this is not useful ip"
