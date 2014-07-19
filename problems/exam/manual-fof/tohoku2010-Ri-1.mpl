###################################
# FILE     : tohoku2010-Ri-1.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Tohoku U. 2010, science [1]
# RELATED  : qebook p.33 problem 1.3
###################################


[[
All([x,y], Impl(And(y<x,x<a),
x^3+3*x^2-9*x > ((x-y)*(a^3+3*a^2-9*a) + (a-x)*(y^3+3*y^2-9*y)) / (a-y))),
a <= -1
]]:

