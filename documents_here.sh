#! /bin/bash

ls > temp.txt
while read var
	do
		if [ $var = "Documents" ]
			then
				achei=1
			fi
		done <<< "$(cat temp.txt)"

if [ "$achei" = "1" ]
	then
		echo "achei"
	else
		echo "Nao achei"
	fi

rm temp.txt
