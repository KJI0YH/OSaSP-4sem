#!/bin/bash
catalog=$1

let count=0
if [ ! -d "$catalog" ]
then
	echo "The '"$catalog"' is not a directory"
else
	IFS=$'\n'
	list=$(find "$catalog" -type f)
	for i in $list
	do	
		let "count+=1"
		find "$i" -printf "%M %s %p\n"
	done
fi
echo  "Listed "$count" files"



