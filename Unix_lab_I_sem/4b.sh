if [ $# -gt 0 ]
then
	if [ $# -eq 1 ]
	then
		dir=`pwd`
	elif [ $# -eq 2 ]
	then
		dir=$2
	fi
	if [ -f $i ]
	then
		inodeno=`ls -i $1 | cut -d " " -f1`
		echo "The hardlinks of $1 are"
		find $dir -inum $inodeno -print
		echo "The symbolic links are"
		ls -lR $dir | tr -s " " | grep $1 | grep "^l" | cut -d " " -f9
	else
		echo "$1 is not a file"
	fi
else
	echo "Enter sh filename.sh filename path(optional)"
fi
