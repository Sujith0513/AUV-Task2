#!/bin/bash

read -p "Enter the path : " r1 # getting the path from the user
echo "$r1"

echo "Names before changing : "
for file in "$r1"/*
do
	echo "$(basename $file)" # printing all the files in that folder
done

echo "Names after adding '_New' at the end of all the files and directories : "
for f in "$r1"/*
do
	mv "$f" "${f%.*}_New.${f##*.}" # adding _new to all the filenames
done 

for f in "$r1"/*
do
	echo "$(basename $f)"
done

read -p "Enter the extension of files you want to renmame like .txt, .py : " type
for f in "$r1"/*
do
	if [[ "$f" == *"$type" ]] # checking whether the file is having the extension given by the user
	then
		mv "$f" "${f%.*}_type.${f##*.}" # adding _type to the filenames
	fi
done 

echo "after adding '_type' at the end of all $type extension file : "
for f in "$r1"/*
do
	echo "$(basename $f)"
done	 

read -p "Enter the extension of the files which you want to change like .txt, .py : " ext1
read -p "Enter the new extension of the file like .txt, .py : " ext2

for f in "$r1"/*
do
	if [[ "$f" == *"$ext1" ]] # checking whether the file is having the extension given by the user
	then
		mv "$f" "${f%.*}${ext2}" # changing the extension
	fi
done 

echo "after changing the $ext1 extension to $ext2 extension : "
for f in "$r1"/*
do
	echo "$(basename $f)"
done
