#!/bin/bash

read -p "enter a number :" num

sum=0

while [ $num -gt 0 ]
do
	digit=$((num % 10))
	sum=$((sum + digit))
	num=$((num/10))
done

echo "sum is : $sum"
