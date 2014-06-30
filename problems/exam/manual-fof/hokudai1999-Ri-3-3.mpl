###################################
# FILE     : hokudai1999-Ri-3-3.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Hokkaido U. 1999, science [3](3)
###################################

# R (-a/2 + sqrt(3)*b/2, sqrt(3)*a/2 + b/2)
# x^2+y^2 = 4/3


[[Ex([a,b], And(
  a^2 + b^2 = 4/3,
  S = abs(b) * abs(-a/2 + (3)^(1/2)*b/2 - a))),
  And(0 <= S, S <= 3^(1/2))],
 [And(And(0 <= Smax, Smax <= 3^(1/2)), All([S], Or(Not(And(0 <= S, S <= 3^(1/2))), S <= Smax))),
  Smax = 3^(1/2)],
 [Ex([Smax], And(
  Smax = 3^(1/2),
  a^2 + b^2 = 4/3,
  Smax = abs(b) * abs(-a/2 + (3)^(1/2)*b/2 - a))),
  Or(And(a=1/3^(1/2), b=-1),And(a=-1/3^(1/2),b=1))]]:


