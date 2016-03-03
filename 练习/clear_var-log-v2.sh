#!/bin/bash
#清除日志脚本 ，版本2
LOG_DIR=/var/log
ROOT_UID=0 #$uid为0的时候用户才有root用户权限
#要使用root用户来运行
if [ "$UID" -ne "$ROOT_UID" ]
then
	echo "Must be root to run this script."
	exit 1
fi

cd $LOG_DIR || {
	echo "Cannot change to necessary directory ." >&2
	exit 1
}

cat /dev/null > messages && echo "Logs cleaned up"
exit 0
