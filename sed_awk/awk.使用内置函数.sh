[root@liudehua ~]# awk 'BEGIN{print PROCINFO["pid"]}'     ���鿴pid��
16332

[root@liudehua ~]# awk 'BEGIN { print ENVIRON["USER"] }'   ���鿴ִ���û���
root
[root@liudehua ~]# cat nima
xxoo;121;8989
jbjb;456;789
[root@liudehua ~]# awk '/xxoo/{IGNORECASE=1;print}' nima   ����Сд�����У�
xxoo;121;8989