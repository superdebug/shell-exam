#!/bin/bash

logfile=/root/bak.log
riqi=`date`
echo "============================================================" >>$logfile
echo "$riqi" >> $logfile

#dir=`basename $logfile`
#[ ! -d  $dir ] && exit 1

tar zcvf /root/etc.tar.gz /etc >> $logfile 2>> $logfile 
mv /root/etc.tar.gz /tmp/ >> $logfile 2>>$logfile
