#!/bin/bash

read -p "enter a number to get the factorial:" num

fact=1

for((i=1;i<=num;i++))
do
fact=$((fact * i))
done

echo "factorial is : $((fact))"
