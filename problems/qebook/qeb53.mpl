###################################
# FILE     : qeb53.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : qebook page. 53, example1.11, 1.13
# SEE      : ../../toy/redlog.mpl for example1.12
###################################

[[ # example1.11
  Ex([x1,x2], And(x1^2 + x2^2 <= a, x1^2 > b)),
  And(a > b, a >= 0)
], [ # example1.11
  Ex([x1,x2], And(x1^2 + x2^2 <= 9, x1^2 > 5)),
  true
], [ #example1.13
  Ex([x,s,c], And(f=x+1-c, g=x+1-s, c^2+s^2=1, c>=0, s>=0, 0<=x, x<=1)),
  And(-7 <= f^2+g^2-4*f-4*g, f^2+g^2-2*f-2*g <= -1, -1<=f-g, f-g<=1)
]]:

