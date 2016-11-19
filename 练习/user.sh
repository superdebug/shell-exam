#!/bin/bash

> user.log

for i in `seq 9`
do
	id test${i} >/dev/null 2>/dev/null ||  useradd test${i}
	echo "passwd${i}"|passwd test${i} --stdin
	echo "user:test${i}  pass:passwd${i}" >> user.log
done
