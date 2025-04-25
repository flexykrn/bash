#!/bin/bash

read -p "enter the array of numbers: " -a arr

echo "Even Numbers:"

for i in "${arr[@]}"
do
if(( i % 2 == 0 ))
then echo "$i"
fi
done
