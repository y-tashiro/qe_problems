###################################
# FILE     : lasserre01.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# CITATION : J.B. Lasserre, Global optimization with polynomials and the problem of moments, SIAM Journal on Optimization 11 (3) (2001) 796–817.
# RELATED  : H. Iwane, Yanami, Anai, Yokoyama, "An effective implementation of symbolic--numeric cylindrical algebraic decomposition for quantifier elimination", TCS, 479:43--69, 2013
# DOMAIN   : reals
###################################

[[
  All([t1, t2, rho], Impl(And(
    0 <= rho, rho < 1, -rho <= t1, t1 <= rho, -rho <= t2, t2 <= rho),
    f <= t1^2*t2^4+t1^4*t2^2-t1^2*t2^2+1)),
  27*f <= 26
]]:



