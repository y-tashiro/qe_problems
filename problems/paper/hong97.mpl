###################################
# FILE     : hong97.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# CITATION : H.Hong, Liska, Steinberg, "Testing Stability by Quantifier Elimination", Journal of Symbolic Computation, 24(2), 1997.
# RELATED  : A.W. Strzebonski, "Cylindrical algebraic decomposition using validated numerics.", JSC, 41(9):1021--1038, 2006
# RELATED  : H. Iwane, Yanami, Anai, Yokoyama, "An effective implementation of symbolic--numeric cylindrical algebraic decomposition for quantifier elimination", TCS, 479:43--69, 2013
# DOMAIN   : reals
###################################

[[
All([x], All([y], Or(-x <= 0, -50000*y^2+(-50000*x^2+49719) <= 0, y^12+(6*x^2+10*x-25)*y^10+(15*x^4+50*x^3-25*x^2-350*x+225)*y^8+(20*x^6+100*x^5+150*x^4-600*x^3-1900*x^2+2000*x-200)*y^6+(15*x^8+100*x^7+350*x^6+300*x^5-2250*x^4-6000*x^3+3000*x^2)*y^4+(6*x^10+50*x^9+275*x^8+1000*x^7+2100*x^6+1200*x^5-3000*x^4)*y^2+(x^12+10*x^11+75*x^10+450*x^9+2225*x^8+9200*x^7+32200*x^6+96000*x^5+240000*x^4+480000*x^3+720000*x^2+720000*x) < 0))), true],
[All([a], All([b], All([c], Or(a < 0, b < 0, -4*b^2+(-4*a^2+1) <= 0, (4*b^4+(-8*a-4)*b^3+(8*a^2+8*a-3)*b^2+(-12*a^2+2*a+4)*b+(5*a^2-4*a))*c^2+((8*a-4)*b^3+(-8*a^2-4*a+2)*b^2+(8*a^3-4*a^2+4*a)*b+(-4*a^3+2*a^2))*c+((8*a^2-12*a+5)*b^2+(-8*a^3+8*a^2+2*a-4)*b+(4*a^4-4*a^3-3*a^2+4*a)) <= 0, (2*b^4+(-4*a)*b^3+(6*a^2-2)*b^2+(-4*a^2+2*a)*b)*c^4+((4*a)*b^3+(-4*a)*b^2+(4*a^3-4*a^2)*b)*c^3+((6*a^2-4*a)*b^2+(-4*a^3+2*a)*b+(2*a^4-2*a^2))*c^2 <= 0)))), true],
[All([a], All([b], All([c], Or(a < 0, -a+1 < 0, b < 0, -b+1 < 0, (And((b^4+(-4*a)*b^3+(6*a^2-1)*b^2+(-4*a^3+2*a)*b+(a^4-a^2))*c^4 <= 0, (b^4-b^2)*c^4+((4*a)*b^3+(-4*a)*b^2)*c^3+((6*a^2-4*a)*b^2+(-4*a^2+2*a)*b)*c^2+((4*a^3-4*a^2)*b)*c+(a^4-a^2) <= 0, (Or((4*b^4+(-8*a-4)*b^3+(8*a^2+8*a-3)*b^2+(-12*a^2+2*a+4)*b+(5*a^2-4*a))*c^2+((8*a-4)*b^3+(-8*a^2-4*a+2)*b^2+(8*a^3-4*a^2+4*a)*b+(-4*a^3+2*a^2))*c+((8*a^2-12*a+5)*b^2+(-8*a^3+8*a^2+2*a-4)*b+(4*a^4-4*a^3-3*a^2+4*a)) <= 0, (2*b^4+(-4*a)*b^3+(6*a^2-2)*b^2+(-4*a^2+2*a)*b)*c^4+((4*a)*b^3+(-4*a)*b^2+(4*a^3-4*a^2)*b)*c^3+((6*a^2-4*a)*b^2+(-4*a^3+2*a)*b+(2*a^4-2*a^2))*c^2 <= 0)))))))), true]
]:

