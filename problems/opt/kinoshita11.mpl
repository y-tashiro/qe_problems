###################################
# FILE     : kinoshita11.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# CITATION : H. Iwane, Yanami, Anai, Yokoyama, "An effective implementation of symbolic--numeric cylindrical algebraic decomposition for quantifier elimination", TCS, 479:43--69, 2013
# DOMAIN   : reals
###################################

[[
  # inf-norm
  # Minimize max(b1,b2,b3)
  # s.t.     1 + c2^2+c3^2-100*bi^2 <= 0 (i=1..3)
  #          bi >= 0
  #          c2 = b1^2*b3^2+b1^2+b3^2+1,
  #          c3 = b1^2*b2^2+b1^2+b2^2+1
  Ex([b1,b2,b3,c2,c3], And(
    f >= b1, f >= b2, f >= b3,
    1 + c2^2+c3^2-100*b1^2 <= 0,
    1 + c2^2+c3^2-100*b2^2 <= 0,
    1 + c2^2+c3^2-100*b3^2 <= 0,
    b1 >= 0, b2 >= 0, b3 >= 0,
    c2 = b1^2*b3^2+b1^2+b3^2+1,
    c3 = b1^2*b2^2+b1^2+b2^2+1)),
    Or(2*f^8+8*f^6+12*f^4-92*f^2+3 <= 0, -975*f^2+641 <= 0)
], [
  # simplified inf-norm
  # Minimize max(a1,a2,a3)
  # s.t.     1 + c2^2+c3^2-100*ai <= 0 (i=1..3)
  #          ai >= 0
  #          c2 = a1*a3+a1+a3+1,
  #          c3 = a1*a2+a1+a2+1
  Ex([a1,a2,a3,c2,c3], And(
    f >= a1, f >= a2, f >= a3,
    1 + c2^2+c3^2-100*a1 <= 0,
    1 + c2^2+c3^2-100*a2 <= 0,
    1 + c2^2+c3^2-100*a3 <= 0,
    a1 >= 0, a2 >= 0, a3 >= 0,
    c2 = a1*a3+a1+a3+1,
    c3 = a1*a2+a1+a2+1)),
    Or(2*f^4+8*f^3+12*f^2-92*f+3 <= 0, -975*f+641 <= 0)
], [
  # 2-norm
  # Minimize (b1^2+b2^2+b3^2)
  # s.t.     1 + c2^2+c3^2-100*bi^2 <= 0 (i=1..3)
  #          bi >= 0
  #          c2 = b1^2*b3^2+b1^2+b3^2+1,
  #          c3 = b1^2*b2^2+b1^2+b2^2+1
  Ex([b1,b2,b3,c2,c3], And(
    f = b1^2+b2^2+b3^2,
    1 + c2^2+c3^2-100*b1^2 <= 0,
    1 + c2^2+c3^2-100*b2^2 <= 0,
    1 + c2^2+c3^2-100*b3^2 <= 0,
    b1 >= 0, b2 >= 0, b3 >= 0,
    c2 = b1^2*b3^2+b1^2+b3^2+1,
    c3 = b1^2*b2^2+b1^2+b2^2+1)),
  2*f^4+24*f^3+108*f^2-2484*f <= -243
], [
  # simplified 1-norm
  # Minimize a1+a2+a3
  # s.t.     1 + c2^2+c3^2-100*ai <= 0 (i=1..3)
  #          ai >= 0
  #          c2 = a1*a3+a1+a3+1,
  #          c3 = a1*a2+a1+a2+1
  Ex([a1,a2,a3,c2,c3], And(
    f = a1 + a2 + a3,
    1 + c2^2+c3^2-100*a1 <= 0,
    1 + c2^2+c3^2-100*a2 <= 0,
    1 + c2^2+c3^2-100*a3 <= 0,
    a1 >= 0, a2 >= 0, a3 >= 0,
    c2 = a1*a3+a1+a3+1,
    c3 = a1*a2+a1+a2+1)),
  2*f^4+24*f^3+108*f^2-2484*f <= -243
]]:



