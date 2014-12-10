###################################
# FILE     : portfolio1.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : http://www.maplesoft.com/applications/view.aspx?SID=1401&view=html
# RELATED  : H. Iwane, Yanami, Anai, Yokoyama, "An effective implementation of symbolic--numeric cylindrical algebraic decomposition for quantifier elimination", TCS, 479:43--69, 2013
###################################

[[ # portfolio
  Ex([x1,x2,x3], And(
  x1 >= 0, x2 >= 0, x3 >= 0,
  x1 + x2 + x3 <= 10000,
  45*x3^2+(-30*x2+(10*x1))*x3+(3*x2^2+(-40*x1)*x2+(8*x1^2+(-f))) = 0,
  5*x1 - 4*x2 + 15*x3 >= 100000,
  f = 45*x3^2 - 30*x2*x3 + 10*x1*x3 + 3*x2^2 - 40*x1*x2 + 8*x1^2)),
  And(5082000000000 <= 3341 * f, f <= 4500000000)
], [ # portfolio nox3
  Ex([x1,x2,x3], And(
  x1 >= 0, x2 >= 0,
  x1 + x2 + x3 <= 10000,
  5*x1 - 4*x2 + 15*x3 >= 100000,
  f = 45*x3^2 - 30*x2*x3 + 10*x1*x3 + 3*x2^2 - 40*x1*x2 + 8*x1^2)),
  And(5082000000000 <= 3341 * f, f <= 4500000000)
], [ # portfolio-para
  Ex([x1,x2,x3], And(
  x1 >= 0, x2 >= 0,
  x1 + x2 + x3 = t,
  5*x1 - 4*x2 + 15*x3 >= 100000,
  f = 45*x3^2 - 30*x2*x3 + 10*x1*x3 + 3*x2^2 - 40*x1*x2 + 8*x1^2)),
  Or(And(20000 <= 3 * t, 1081 * t <= 9340000,
  17200000000 - 1960000*t + 87*t^2 <= 4*f, f <= 45*t^2),
     And(1081 * t > 9340000,
     21290000000000 + 137000000*t - 74140*t^2 <= 10023*f, f <= 45*t^2))
]]:

