#!/bin/bash
cat << EOF
------------------------------------
		日志分析小工具
------------------------------------	

EOF
 
LANG=en_US
today=`date|awk '{print $3"/"$2"/"$6}'`
yesterday=`date|awk '{print $3-1"/"$2"/"$6}'` 

Usage() 
{
	echo "Usage: $0 Logfile"
}

[ $# -ne 1 ] && Usage && exit 1
[ ! -f $1 ] && echo "No file or input error!" && exit 1
Log=$1
 
Tmpfile=ip-$(date +%Y-%m-%d).log

echo "-------the $yesterday log statistic as shown:--------"
 
echo "The UV in total yesterday:"

cat $Log| grep $yesterday | awk  '{print $7}'|wc -l
 
echo  "Most of the time yesterday:"

cat $Log|awk -F'[ :]+' '{print $5":"$6}'|sort|uniq -c|sort -nrk 1|head
 
echo  "Most of the page yesterday:"
 
cat $Log|grep $yesterday | awk '{print $11}' |sort|uniq -c|sort -rnk 1 |head 

echo  "Most of the ip yesterday:"
 
cat $Log| grep "$yesterday" | awk '{print $1}' | sort |uniq -c |sort -rn |head > $Tmpfile
	
cat $Tmpfile | while read line  
do
	num=$(echo $line|awk '{print $1}')
	echo -n "访问次数:$num   "
	ip=$(echo $line|awk '{print $2}')
	curl -s ip.cn?ip=$ip 
done
