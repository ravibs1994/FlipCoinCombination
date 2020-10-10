#!/bin/bash -x
head=1
tail=0
hCount=0
tCOunt=0
i=1
declare -A arr
while [ $i -le 20 ]
do
	result=$((RANDOM%2))
	if [ $result -eq $head ]
		then
			((hCount++)) 
			arr[$i]="H"
		else
			((tCount++))
			arr[$i]="T"

	fi
	((i++))
done
echo ${arr[@]}
echo "Percentage of Head" $((`awk 'BEGIN{print '$hCount'/'20'*'100'}'`))
echo "Percentage of Tail" $((`awk 'BEGIN{print '$tCount'/'20'*'100'}'`))
