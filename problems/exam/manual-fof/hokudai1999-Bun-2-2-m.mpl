###################################
# FILE     : hokudai1999-Bun-2-2.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Hokkaido U. 1999, humanities [2](2)
###################################
# 0 < a < 1
# C1: y=1-x^2
# C2: y=(1/a^2-1)*x^2
#  A: (a, 1-a^2)
#  B: (a, 0)

[[S = area([x-a,y,y-(1/a^2-1)*x^2],And(0<a,a<1,0<=x,x<=a), [a,x,y]),
 S = (a - a^3)/3]]:

