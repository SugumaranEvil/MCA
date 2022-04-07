#!/bin/bash 
#Enter the valid login name & print their home directory

if [ $# -eq 0 ]
then
	echo "No arguments passed, Enter some valid login name as argument"
else
	for x in $*
	do
		if [ $(grep $x /etc/passwd) ]
		then
			echo "Home directory for $x :"
			echo ~$x
		else
			echo "User does not exist"
		fi
	done
fi
