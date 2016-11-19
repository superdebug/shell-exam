#!/bin/bash


echo '$1' = $1
[[ $1 = "-t" ]] && shift 
t=$1
shift
echo $t
