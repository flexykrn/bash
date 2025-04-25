#!/bin/bash

read -p "enter three numbers : " a b c

if((a>=b && a>=c))
then 
echo "$a is the largest of the three"
elif((b>=c))
then
echo "$b is the largest of the three"
else
echo "$c is the largest of the three"
fi

