#!/bin/bash

read -p "enter a number to check where it is prime or not :" num

isprime=1

for((i=2;i<num;i++))
do
if((num % i == 0 ))
then
isprime=0
break
fi
done

if((isprime==1 && num>1))
then
echo "$num is a prime number"
else
echo "$num is not a prime number"
fi

