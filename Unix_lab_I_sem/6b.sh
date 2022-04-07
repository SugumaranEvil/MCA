echo "enter the string"
read str
length=`expr length $str`
if [ $length -lt 10 ] 
then
	echo $length
	echo "String contains less than 10 characters"
else
	echo "The length of the string:$length"
fi
