#!/bin/bash

read -p "enter the first number : " a
read -p "enter the second number : " b

echo "number before swaping are first:$a second:$b"

temp=$a
a=$b
b=$temp
 
echo "number after swapping are first:$a second:$b"
