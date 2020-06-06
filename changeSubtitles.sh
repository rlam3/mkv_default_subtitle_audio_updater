#!/bin/bash

OIFS="$IFS"
IFS=$'n' 
for file in *.mkv
do
	echo $file
	#Update audio track defaults
	mkvpropedit "${file}" --edit track:@6 --set flag-default=0
	mkvpropedit "${file}" --edit track:@7 --set flag-default=1
	#Update subtitle track defaults
	mkvpropedit "${file}" --edit track:@5 --set flag-default=0
	mkvpropedit "${file}" --edit track:@4 --set flag-default=1
done
IFS="$OIFS"