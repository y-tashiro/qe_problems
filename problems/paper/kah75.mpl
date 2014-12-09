###################################
# FILE     : kah75.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# CITATION : W. Kahan Problem no.9: An ellipse problem SIGSAM Bulletin of the Assoc Comp Mach 9(35):11, 1975
# DOMAIN   : reals
###################################


[[
 All([x,y], And(a>0,b>0, Impl(
   b^2*(x-c)^2+a^2*y^2-a^2*b^2 = 0,
   x^2+y^2 <= 1))),
 And(0<a, 0<b, a-1<=c, c<=1-a,
   Or(b^2 < a, b^2*c^2 + b^4 - a^2*b^2 - b^2 + a^2 <= 0))
]]:

