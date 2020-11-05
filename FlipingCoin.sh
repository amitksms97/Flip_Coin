#!/bin/bash
t=0
h=0
while [[ h -ne 21 && t -ne 21 ]]
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
d=`expr $h - $t`
if [ $d -le -1 ]
then
	d=`expr $d \* -1`
	f=1
else
	f=0
fi
if [ $f -eq 1 ]
then
	echo "Tails won $t times"
else
	echo  "Heads won $h times"
fi
echo "Difference: $d"
