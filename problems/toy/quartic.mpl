###################################
# FILE     : quartic.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : Dennis S. Arnon, Maurice Mignotte, On mechanical quantifier elimination for elementary algebra and geometry, JSC 5:237--259, 1988
###################################

[[
All([x], x^4 + p*x^2+q*x+r > 0),
And(
256*r^3 - 128*p^2*r^2 + 144*p*q^2*r + 16*p^4*r - 27*q^4 - 4*p^3*q^2 >= 0,
Or(And(27*q^2 + 8*p^3 > 0,
48*r^2 - 16*p^2*r + 9*p*q^2 + p^4 = 0),
And(256*r^3 - 128*p^2*r^2 + 144*p*q^2*r + 16*p^4*r - 27*q^4 - 4*p^3*q^2 > 0,
48*r^2 - 16*p^2*r + 9*p*q^2 + p^4 > 0,
6*r - p^2 > 0),
And(27*q^2 + 8*p^3 > 0,
256*r^3 - 128*p^2*r^2 + 144*p*q^2*r + 16*p^4*r - 27*q^4 - 4*p^3*q^2 > 0)))
],
[
All([x], x^4 + p*x^2+q*x+r >= 0),
And(256*r^3 - 128*p^2*r^2 + 144*p*q^2*r + 16*p^4*r - 27*q^4 - 4*p^3*q^2 >= 0,
Or(27*q^2 + 8*p^3 > 0,
And(48*r^2 - 16*p^2*r + 9*p*q^2 + p^4 >= 0, 6*r - p^2 >= 0)))
]]:



