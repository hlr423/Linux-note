#!/bin/bash

read -p "please input one ip:" ip_addr
ping $ip_addr -c1 -W1 &> /dev/null && echo "$ip_addr is up" || echo "$ip_addr is down"
