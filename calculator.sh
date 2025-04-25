
#!/bin/bash

echo "enter two numbers : "
read n1 n2

echo "select the operator '+,-,/,*' : "
read op

case $op in
	+) echo "addition is: $((n1+n2)) " ;;
	-) echo "subtraction is : $((n1-n2))" ;;
	\*) echo "multiplication is : $((n1*n2))";;
	/)  if [ "$n2" -eq 0 ]; then
	    echo "error divisin by zeroo" 
	else echo "divison is : $((n1/n2))" 
    		fi ;;
	*)echo "invalid operator" ;;
esac
