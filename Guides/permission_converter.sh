#!/bin/bash

permission="$1"

echo "Argument was: $permission"

if [ $# -ne 1 ]; then
	echo "Usage: 755"
	echo "       r--r--r--"
	exit -1
fi
if [[ "$permission" =~ ^[0-7]{3}$ ]];then
	echo "Octal version of the argument!"
	szimbolumok=("---" "--x" "-w-" "-wx" "r--" "r-x" "rw-" "rwx")
	karakterek=""
	for((i=0;i<3;i++));do
		szamjegy=${permission:i:1}
		karakterek+="${szimbolumok[szamjegy]}"

	done
	echo "Eredmeny: $karakterek"
	exit 0
elif [[ "$permission" =~ ^[r-][w-][x-][r-][w-][x-][r-][w-][x-]$ ]];then
	echo "Character version"
	vegeredmeny=""
	for((i=0;i<9;i+=3)); do
		harmas=${permission:i:3}
		reszeredmeny=0
		[[ ${harmas:0:1} == "r" ]] && ((reszeredmeny+=4))
		[[ ${harmas:1:1} == "w" ]] && ((reszeredmeny+=2))
		[[ ${harmas:2:2} == "x" ]] && ((reszeredmeny+=1))
		vegeredmeny+="$reszeredmeny"
	done
	echo "Result: $vegeredmeny"
	exit 0
else
	echo "Invalid argument format: $permission"
	exit -1
fi
