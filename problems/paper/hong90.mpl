###################################
# x-axis ellipse problem
# FILE     : hong90.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# CITATION : Hoon Hong. Improvements in CAD-bsed Quantifier Elimination. Phd thesis, The Ohio State Univ, 1990
# DOMAIN   : reals
###################################

[[
 All([x,y],
   And(0<a, a<=1, 0<b, b<=1, 0<=c, c<=1-a,
   Impl(And(c-a<x,x<c+a,b^2*(x-c)^2+a^2*y^2-a^2*b^2=0),
   x^2+y^2 <= 1))),
 And(0<a, a<=1, 0<b, b<=1, 0<=c, c<=1-a,
   Or(b^2 < a, b^2*c^2 + b^4 - a^2*b^2 - b^2 + a^2 <= 0))
]]:

