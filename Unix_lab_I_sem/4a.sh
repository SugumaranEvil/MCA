if [ $# -gt 0 ]
then
	for i in $*
	do 
		if [ -f $i ] 
		then
			echo $i | tr '[a-z]' '[A-Z]'
		else
			echo "$i does not exist"
		fi
	done
else
	echo "Enter the arguments"
fi
