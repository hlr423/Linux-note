#!/bin/bash
#description show select
#version 0.1
#authre gaomeng
#date 20160819
#
PS3="What do you want:"
select list in gongbaojiding hongshaorou huobaofeichang shaopaigu
do
	case $list in
	gongbaojiding)
		echo "$list is 20￥"
		exit;;
	hongshaorou)
		echo "$list is 30￥"
		exit;;
	huobaofeichang)
		echo "$list is 25￥"
		exit;;
	shaopaigu)
		echo "$list is 40￥"
		exit;;
	*)
		echo "no the list, please choice other."
	esac	
done


