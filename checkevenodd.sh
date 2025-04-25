#!/bin/bash

read -p "enter a number to check if it is even or odd:" n1


if(( n1 % 2 == 0 )) 
then
	echo "the number is even"
else
	 echo "the number is odd"
fi
