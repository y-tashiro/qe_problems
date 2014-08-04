###################################
# FILE     : dorato97.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# RELATED  : A.W. Strzebonski, "Cylindrical algebraic decomposition using validated numerics.", JSC, 41(9):1021--1038, 2006
# RELATED  : H. Iwane, Yanami, Anai, Yokoyama, "An effective implementation of symbolic--numeric cylindrical algebraic decomposition for quantifier elimination", TCS, 479:43--69, 2013
# DOMAIN   : reals
###################################

[[
Ex([q1], Ex([q2], All([w], And(-q1+1 < 0, -q2 < 0, -nbyd < 0, (q1^2+(-nbyd))*w^4+(q2^2+(2*nbyd)*q2+((-nbyd+1)*q1^2+(-2*nbyd)*q1+(-nbyd)))*w^2+((-nbyd+1)*q2^2) <= 0, (q1^2+(-nbyd))*w^4+(q2^2+(2*nbyd)*q2+((-nbyd+1)*q1^2+(2*nbyd)*q1+(-nbyd)))*w^2+((-nbyd+1)*q2^2) <= 0)))),
nbyd > 4]]:

