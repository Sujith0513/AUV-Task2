#!/bin/bash
 if [[ $# -eq 0 ]] #checking that there is 0 given argument
 then
 	fortune | cowsay
 else
 	cowsay "$1"
 fi
