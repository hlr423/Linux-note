#/bin/bash
for i in {1..8};do
	if `let i%=2` ;then
		for j in {1..8};do
			if `let j%=2` ;then
				echo -ne "\033[42m  \033[0m"
			else
				echo -ne "\033[41m  \033[0m"
			fi
		done
		echo   
	else
		for j in {1..8};do
			if `let j%=2` ;then
				echo -ne "\033[41m  \033[0m"
			else
				echo -ne "\033[42m  \033[0m"
			fi
		done
		echo
	fi
done
