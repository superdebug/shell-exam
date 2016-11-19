#!/bin/bash

for i in `seq 9`
do
	for j in `seq 9`
	do
		[ $j -le $i  ] && echo -n "$j x $i = `expr $i \* $j`  "
	done
	echo  ""
done
