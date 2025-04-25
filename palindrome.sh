#!/bin/bash

read -p "enter a string to check if it is a palindrome : " str

rev=$(echo $str | rev)

if [ "$str" == "$rev" ]
then 
	echo "the string is a palindrome"
else 
	echo "the string is not a palindrome"
fi
