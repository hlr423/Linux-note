#!/bin/bash
#description /etc/passwd user10 sum user20
#version 0.1
#author gm
#date 20160810

#get user10 uid and user20 uid

id_1=`sed -n '10p' /etc/passwd | cut -d: -f3`
id_2=`sed -n '20p' /etc/passwd | cut -d: -f3`

#uid10 sum uid20   

let sum_id=$id_1+$id_2
echo "user10 sum user20 = $sum_id"

#unset 

unset id_1
unset id_2
unset sum_id
