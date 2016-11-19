#!/bin/bash

isnum()
{
	a=$1
	expr $a + 1 >/dev/null 2>&1
	[ $? -ne 0 ] && echo "$a is not a number" || echo "$a is a number"
}

isnum asf
