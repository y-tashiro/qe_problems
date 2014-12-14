###################################
# FILE     : fujisawa09.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : http://www.amazon.co.jp/dp/4254117884
###################################

[[ # p.76
  Ex([x1,x2,x3], And(
  f = -2*x1 + 3*x2 - 2*x3,
  6*x1^2+3*x2^2-2*x2*x3+3*x3^2-17*x1+8*x2-14*x3 >= -19,
  x1+2*x2+x3 <= 5,
  5*x2+3*x3 <= 7,
  0 <= x1, x1 <= 2, 0 <= x2, x2 <= 2, 1 <= 2*x3, x3 <= 3)),
  And(3*f^2+52*f+196 >= 0, -9 <= f, 10*f <= 23)
]]:

