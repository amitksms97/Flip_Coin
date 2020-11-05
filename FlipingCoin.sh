#!/bin/bash
t=0
h=0
while [[ d -le 2 ]]
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
	if [[ $h -ge 21 || $t -ge 21 ]]
	then
		d=`expr $h - $t`
		if [ $d -le -1 ]
		then
			d=`expr $d \* -1`
			f=1
		else
			f=0
		fi
	fi
done
if [ $f -eq 1 ]
then
	echo "Tails won $t times and Head wins $h times. Overall Tail wins with diffrence of $d"
else
	echo "Heads won $h times and Tails win by $t times. Overall Head wins with difffrence of $d"
fi
