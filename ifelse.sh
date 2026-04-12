#!/bin/bash

echo "enter number please"
read num

if [ $num -gt 5 ]
then
	echo "Number is greater than 5"
else
	echo "Number is smaller"
fi

# -eq equal
# -ne not equal
# -gt greater than
# -lt less than
