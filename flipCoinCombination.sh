#!/bin/bash -x
head=1
tail=0
hCount=0
tCOunt=0
dHCount=0
dTCount=0
i=1
j=1
#declare Associative Array
declare -A arr
declare -A arr1
#count Singlet
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

#count doublet
while [ $j -le 20 ]
do
   result=$((RANDOM%2))
	result1=$((RANDOM%2))
   if [[ $result -eq $head && $result1 -eq $head ]]
      then
         ((dHCount++))
         arr1[$j]="HH"
      elif [[ $result -eq $tail && $result1 -eq $tail ]]
			then
         ((dTCount++))
         arr1[$j]="TT"

   fi
   ((j++))
done
echo ${arr1[@]}
echo "Percentage of Head" $((`awk 'BEGIN{print '$dHCount'/'20'*'100'}'`))
echo "Percentage of Tail" $((`awk 'BEGIN{print '$dTCount'/'20'*'100'}'`))
