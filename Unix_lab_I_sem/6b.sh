#file name which is atleast 1 characters

echo "Enter the directory name"
read dir

if [ -d $dir ]
then
	for i in `ls $dir`
	do
		len=`expr length "$i"`
		if [ $len -ge 10 ] 
		then
			echo $i
		fi
	done
else
	echo "$d is not a directory"
fi

