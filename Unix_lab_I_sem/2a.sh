#Geting the two filename as arguments, checks the permission of 2 file are identical or not
clear
if [ $# -eq 2 ]
then
	x=`ls -l $1 | cut -c 2-10`
	y=`ls -l $2 | cut -c 2-10`
	if [ $x = $y ]
	then
		echo "Permissions are equal"
		echo "Permission of $1 & $2 is $x"
	else
		echo "Permissions are not equal"
		echo "Permission of $1 is: $x"
		echo "Permission of $2 is: $y"
	fi
else
	echo "Enter only  filename as arguments"
fi
