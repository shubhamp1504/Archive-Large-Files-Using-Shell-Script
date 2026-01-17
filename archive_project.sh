#!/bin/bash
#$revision:001$
#$sun jan 18 09:00 IST 2025$


#variable
BASE=/home/shubham
DAYS=10
DEPTH=1
RUN=0

#Check if the dir is present or not

if [[ ! -d $BASE ]]
then
	echo "Directory does not exist: $BASE"
	exit 1
fi

#Create 'archive' folder if not present

if [[ ! -d $BASE/archive ]]
then
	mkdir $BASE/archive
fi

#find the list of file larger than 20MB

for i in $(find $BASE -maxdepth $DEPTH -type f -size +15k)

do
	if [[ $RUN -eq 0 ]]
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
		gzip $i || exit 1
		mv $i.gz "$BASE/archive" || exit 1

	fi
done


