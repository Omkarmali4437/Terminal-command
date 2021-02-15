#!/bin/bash

a=`date +"%d%m%Y"`;

for file in `ls *.log.1`
	do
		fname=`echo $file | awk -F. '{print $1}'`;
		lname=`echo $file | awk -F. '{print $2}'`;
		floder="$fname-$a.$lname";
		mv $file $floder
		echo $floder;

	done

