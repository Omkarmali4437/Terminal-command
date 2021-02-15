#!/bin/bash 

for file in `ls *.txt`
do
	fname=`echo $file | awk -F. '{print $1}'`;
	if [ -d $fname]
	then
		rm -r $fname;
	fi
	echo $fname;
	mkdir $fname;
	mv $file $fname;
done
