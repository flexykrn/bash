#!/bin/bash

read -p "enter the number of terms :" num

a=0
b=1

echo "Fibonacci Series"

for((i=0;i<num;i++))
do
echo -n $a
fn=$((a+b))
a=$b
b=$fn
done
echo
