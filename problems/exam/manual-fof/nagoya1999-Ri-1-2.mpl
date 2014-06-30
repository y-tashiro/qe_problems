###################################
# FILE     : nagoya1999-Ri-1-2.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Nagoya U. 1999, science [1](2)
###################################


[[
All([p1,p2], And(
  a1^2 + a2^2 = 1, # (1)
  (a1*p1+a2*p2)^2 +
  (b1*p1+b2*p2)^2 =
  p1^2 + p2^2)),
  And(Or(And(a1^2+a2^2=1,b1=a2,b2=-a1),
         And(a1^2+a2^2=1,b1=-a2,b2=a1)))]]:

