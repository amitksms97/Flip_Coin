#!/bin/bash
n=$((RANDOM%2))
if [ $n -eq 0 ]
then
	echo "Head is a winner"
else
	echo "Tail is a winner"
fi
