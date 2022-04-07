cur_date=$(date "+%d")
if [ `date +%d` -le 9 ]
then
	cal | sed -r "s/\b`date +%d`\b/*/"
else
	ncal | sed -r "s/\b`date +%d`\b/**/"
fi
