#!/bin/bash

read -p "enter the file to be checked: " file

if [ -f "$file" ]
then
	echo "file exists"
else 
	echo "file doesnot exists"
fi

