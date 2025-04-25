
echo "enter two numbers:"
read n1 n2

echo "select operator '+ , /' :"
read op

case $op in
	+) echo "addition is $((n1+n2))";;
	/) if [ "$op" == 0 ]; then
		echo "error division by zero"
	   else echo "diviso is $((n1/n2))"
		fi;;
 	*) echo "invalid operator";;
esac
