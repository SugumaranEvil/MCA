if [ -f $1 ]
then
	lm=`ls -l $1 | tr -s " " | cut -d ' ' -f 6,7,8`
	echo file $1 was created on $lm
else
	echo file $1 does not exist
fi
