[root@liudehua test1]# cat a
date||qq||ww
pwd||qq1||ww1
echo "i love you"||qq1||ww2
ls||qq1||ww2
[root@liudehua test1]#  sed  -r 'h;s/([^|]+)/\1/e;G;s/\n[^|]+//' a
2015年 11月 13日 星期五 18:26:21 UTC||qq||ww
/lw/test1||qq1||ww1
i love you||qq1||ww2
1||qq1||ww2
[root@liudehua test1]# awk -F '[|]+' '{$1|getline $1;}1' OFS='||' a
2015年 11月 13日 星期五 18:28:12 UTC||qq||ww
/lw/test1||qq1||ww1
i love you||qq1||ww2
1||qq1||ww2