#!/bin/bash

read -p "enter base : " b
read -p "enter the exponent : " e

result=1

for((i=0;i<e;i++))
do
result=$((result * b))
done

echo "$b^$e : $result"

