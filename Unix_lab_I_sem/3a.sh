echo "Enter the filename"
read file
if [ -f $file ]
then
	set -- `ls -l $file`
	echo file permission: $1
	echo Number of links: $2
	echo Name of owner: $3
	echo name of the group: $4
	echo size of the file: $5
	echo Month date : $6 $7
	echo time: $8
	echo filename: $9
else
	echo "File does not exist"
fi
