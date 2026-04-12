#!/bin/bash

# for loop

for i in 1 2 3 4 5
do
	echo "Number $i"
done

# while loop

count=1
while [ $count -le 3 ]
do
	echo "count $count"
	count=$((count+1))
done
