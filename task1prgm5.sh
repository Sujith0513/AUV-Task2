#!/bin/bash

read -p "Enter the base of the triangle : " n
#read -p "Enter the position of the element when divided by 10 : " pos
pos=1
declare -i y=1
declare -i z=-1
declare -i end=0
declare -i start=0

for i in $(seq $n) # iterating n times
do
	end=i+z # end is the number value at the end of the line
	start=z+1 # start is the number value at the start of the line
	for j in $(seq $start $end)
	do	
		if [[ $((j/10)) > 0 ]] # if j is greater than 10, we can get the xth position
		then
			echo -n $(( (j/(10**($pos-1)))%10 )) #getting the xth position by removing the number before the xth position and using modulus function to get the number
		else
			echo -n "$j"
		fi
		z=j
	done
	echo ""
done
