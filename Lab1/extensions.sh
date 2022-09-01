#!/bin/bash
outfile=$1
catalog=$2
extension=$3

if [ $# -lt 3 ]
then
{

	echo "Invalid number of parameters"
	echo "\$1 - out file name"
	echo "\$2 - directory to search in"
	echo "\$3 - extension to find"
}>&2
elif [ ! -d $catalog ]
then
	echo "The file "$catalog" is not a directory">&2
else	
	find $catalog -name "*.$extension" | sort -d>$outfile
fi
