#!/bin/bash

read -p "Enter the path : " dir
echo "1. Enter 1 if you want to delete all the files of a folder"
echo "2. Enter 2 if you want to delete all the files with a particular extension"
echo "3. Enter 3 if you want to delete a single file of a folder"
read -p "Enter your choice : " ch
if [[ $ch -eq 1 ]] # checking if the choice is 1
then
	rm -f $dir/* # deleting all the files
elif [[ $ch -eq 2 ]] # checking if the choice is 2
then
	read -p "Enter the extension of the files you want to delete : " type # asking the user for the extension
	for f in "$dir"/*
	do
		if [[ "$f" == *"$type" ]] # checking if the file is having the given extension
		then
			rm -f $f # removing the file
		fi
	done
elif [[ $ch -eq 3 ]]
then
	read -p "Enter the name of the file you want to delete : " name # asking the user for the filename
	rm -f $dir/$name.* # deleteing all the files with the given filename irrespective of the extensions
fi
