#!/bin/bash
db2 connect to 数据库实例名 
db2 connect to 数据库实例名 user 用户名 using 密码 >.../Patrol3/db2.log
db2 -m "select '数据库实例名:'||substr(tbsp_name,1,20) as TABLESPACE_NAME,substr(tbsp_content_type,1,10) as TABLESPACE_TYPE,sum(tbsp_total_size_kb)/1024 as TOTAL_MB,sum(tbsp_used_size_kb)/1024 as USED_MB,sum(tbsp_free_size_kb)/1024 as FREE_MB,tbsp_page_size AS PAGE_SIZE from SYSIBMADM.TBSP_UTILIZATION group by tbsp_name,tbsp_content_type,tbsp_page_size order by 1" >>.../Patrol3/db2.log
