#!/bin/bash
t=0
h=0
for(( i=1; i<=10; i++ ))
do
	n=$((RANDOM%2))
	if [ $n -eq 0 ]
	then
		echo "Head is a winner"
		((h++))
	else
		echo "Tail is a winner"
		((t++))
	fi
done
echo "Heads won $h times"
echo "Tails won $t times"
