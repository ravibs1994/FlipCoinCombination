#!/bin/bash -x
head=1
tail=0
result=$((RANDOM%2))
if [ $result -eq $head ]
	then 
		echo "Head"
	else
		echo "Tail"
fi
