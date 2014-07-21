###################################
# FILE     : tohoku1999-Ri-2.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Tohoku U. 1999, science [2]
###################################

# 直線: (x,y,z) = t(a,b,c)
# a^2+b^2+c^2=1
# S1: (x-10)^2+y^2+z^2=9^2
# S2: x^2+(y-10)^2+z^2=8^2
# c >= 0

[[ And(
 a^2+b^2+c^2=1,
 c >= 0,
 Ex([t], And(
   (a*t-10)^2 + (b*t)^2 + (c*t)^2 = 9^2,
   324*a^2-76*b^2-76*c^2 = 0)),
 Ex([t], And(
   (a*t)^2 + (b*t-10)^2 + (c*t)^2 = 8^2,
   -144*a^2+256*b^2-144*c^2 = 0))),
   And(a^2=19/100, b^2=9/25, c^2=9/20, c>=0)
   ]]:

