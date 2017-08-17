#/bin/bash
#description : sort number
#version 0.1
#author gaomeng
#date 20160903
#
read -p "Input one number: " num
until echo $num | grep -q "^[0-9]*$" ; do
	read -p "You number is error. Please input one number: " num
done

declare -a sort
i=1
while [ $i -le $num ]; do
	sort[$i-1]=$RANDOM
	let i++
done
echo ${sort[*]}
	
i=1
j=1
while [ $i -le $num ]; do
	let j=i+1
	while [ $j -le $num ]; do
		if [ ${sort[$i-1]} -gt ${sort[$j-1]} ]; then
			t=${sort[$j-1]}
			sort[$j-1]=${sort[$i-1]}
			sort[$i-1]=$t
		fi
		let j++
	done
	let i++
done 
echo ${sort[*]}


i=1
j=1
while [ $i -le $num ]; do
	let j=i+1
	while [ $j -le $num ]; do
		if [ ${sort[$i-1]} -lt ${sort[$j-1]} ]; then
			t=${sort[$j-1]}
			sort[$j-1]=${sort[$i-1]}
			sort[$i-1]=$t
		fi
		let j++
	done
	let i++
done 
echo ${sort[*]}

unset i
unset j
unset t
unset sort
unset num
