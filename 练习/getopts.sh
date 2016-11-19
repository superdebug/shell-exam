#!/bin/bash

while getopts vx::y: ARGS
do
	case $ARGS in 
	v)
		echo "Version 1.0" ;;
	x)
		echo "x"
		sec=$OPTARG
		echo "sec=$sec"  ;;
	y)
		echo y
		thr=$OPTARG
		echo  "thr=$thr";;
	esac
done
