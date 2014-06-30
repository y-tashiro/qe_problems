###################################
# FILE     : kyushu1999-Ri-5c-1.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Hokkaido U. 1999, science [5c](1)
###################################
# |a|=|b|=|c|=1
# a.b = b.c = 1/2
# a.c = 0

[[
Ex([a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3], And(
  a1^2 + a2^2 + a3^2 = 1,
  b1^2 + b2^2 + b3^2 = 1,
  c1^2 + c2^2 + c3^2 = 1,
  a1*b1 + a2*b2 + a3*b3 = -1/2,
  c1*b1 + c2*b2 + c3*b3 = -1/2,
  a1*c1 + a2*c2 + a3*c3 = 0,
  a1*d1 + a2*d2 + a3*d3 = 1,
  b1*d1 + b2*d2 + b3*d3 = 0,
  c1*d1 + c2*d2 + c3*d3 = 0,
  d1 = x*a1 + y*b1 + z*c1,
  d2 = x*a2 + y*b2 + z*c2,
  d3 = x*a3 + y*b3 + z*c3)),
  And(x=3/2,y=1,z=1/2)],
[Ex([a1,a2,a3,b1,b2,b3,c1,c2,c3,f1,f2,f3], And(
  a1^2 + a2^2 + a3^2 = 1,
  b1^2 + b2^2 + b3^2 = 1,
  c1^2 + c2^2 + c3^2 = 1,
  a1*b1 + a2*b2 + a3*b3 = -1/2,
  c1*b1 + c2*b2 + c3*b3 = -1/2,
  a1*c1 + a2*c2 + a3*c3 = 0,
  a1*f1 + a2*f2 + a3*f3 = 0,
  b1*f1 + b2*f2 + b3*f3 = 0,
  c1*f1 + c2*f2 + c3*f3 = 1,
  f1 = x*a1 + y*b1 + z*c1,
  f2 = x*a2 + y*b2 + z*c2,
  f3 = x*a3 + y*b3 + z*c3)),
  And(x=1/2,y=1,z=3/2)]]:

