###################################
# FILE     : tokyo1999-Bun-3.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Tokyo U. 1999, humanities [3]
# SyNRAC-20140624: [1] solved, [2] timeout
###################################

# c > 1/4
# A: y=x^2
# l: y=x-c
# B: ??
# P: on A
# Q: on B
# min len(PQ)

[[Ex([X,Y], And(
   (y+Y)/2 = (x+X)/2 - c,  # 中点は直線上
   (x-X) + (y-Y) = 0,      # 直交
   Y=X^2)),
  c^2+2*c*y+y^2+c-x = 0],
 [Ex([p1,p2,q1,q2], And(
  L = (p1-q1)^2 + (p2-q2)^2,
  p2 = p1^2,
  c^2+2*c*q2+q2^2+c-q1 = 0)),
  L >= 2*(c-1/4)^2]]:

