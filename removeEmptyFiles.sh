#! /bin/bash

LIST=$(find -empty)
echo 'Empty files are:' $LIST
COUNT=$(echo $LIST | wc -w)
echo $COUNT
I=1
while [ ${I} -lt ${COUNT} ]
do
	FILE=$(echo $LIST | cut -d " " -f $COUNT)
	COUNT=$($COUNT+1)
	echo 'Files to be removed' $FILE
	rm -f $FILE
	if [[ ${?} != 0 ]]
	then
		echo 'Unable to remove file'
		exit 1
	else
		echo $FILE 'is removed'
	fi
done
exit 0
