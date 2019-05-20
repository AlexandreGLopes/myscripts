#! /bin/bash

ls > temp.txt
while read var
	do
		if [ $var = "Documents" ]
			then
				echo "1" > achei.txt
			fi
		done <<< "$(cat temp.txt)"

achei=`cat achei.txt`
if [ "$achei" = "1" ]
	then
		echo "achei a pasta"
	else
		echo "Nao achei a pasta"
	fi

rm temp.txt
rm achei.txt
