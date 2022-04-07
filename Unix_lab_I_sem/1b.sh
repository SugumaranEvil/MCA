#Ceate a directory inside a directory 
IFS="/"
if [ $# -gt 0 ]
then
	for i in $*
	do
		if [ -f $i ]
		then
			echo "$i is a file"
			exit
		elif [ -d $i ]
		then
			cd $i
		else
			mkdir $i
			echo "$i is in `pwd`"
			cd $i
		fi
	done
else
	echo "Invalid no of arguments"
fi
