#!/bin/bash

cwd=$(pwd) #getting the current working directory
find $cwd -type f -name "*.txt" -exec rm {} + # removing all the text files recursively and forcibly, here f means forcibly
