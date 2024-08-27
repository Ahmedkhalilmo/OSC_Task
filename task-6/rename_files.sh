#!/bin/bash
if [ ! -e "$1" ]
	then
		echo "NOT found directory"
else
	dir=$1
	for file in "$dir"/*.txt
	do
		if [ -f "$file" ]
			then
        			filename=$(basename "$file")
        			mv "$file" "$dir/old_$filename"
        	fi
	done
fi
