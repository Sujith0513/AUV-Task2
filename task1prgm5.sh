#!/bin/bash

read -p "Enter the base of the triangle : " n
#read -p "Enter the position of the element :" pos
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
		if [[ $((j/10)) > 0 ]] # if j is greater than 10 as it should be divisible by 10 to get the position
		then
			echo -n $(( (j/(10**($pos-1)))%10 )) #getting the xth position by removing the number before the xth position and using modulus function to get the number
		else
			echo -n "$j"
		fi
		z=j
	done
	echo ""
done
