@echo off
set date=%date:0,4%-%date:~5,2%-%date:~date:~8,2%
mysqldump -uroot -poldboy -A -B >D:\BAK\"%date%".sql
rar.exe a -k -r -s -m1 d:\bak\"%date%".sql.rar d:\bak\"%date%".sql
del d:\bak\*.sql
rar.exe a -k -r -s -m1 d:\bak\"%date%"htdocs.rar d:\work\phpnow\htdocs

