###################################
# FILE     : parrilo06.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# CITATION : P.A. Parrilo, S. Lall, Semidefinite programming relaxations and algebraic optimization in control, Mini-course on Polynomial Equations and Inequalities I and II, 2006
# RELATED  : H. Iwane, Yanami, Anai, Yokoyama, "An effective implementation of symbolic--numeric cylindrical algebraic decomposition for quantifier elimination", TCS, 479:43--69, 2013
# DOMAIN   : reals
###################################

[[
  All([t1, t2], Impl(And(
    -1 <= t1, t1 <= 1, -1 <= t2, t2 <= 1),
    f <= t1^2*t2^4+t1^4*t2^2-3*t1^2*t2^2+1)),
  f <= 0
]]:



