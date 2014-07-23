###################################
# FILE     : tohoku2011-Ri-1-l.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Tohoku U. 2011, science [1]
###################################

[[
All([x0],Or(Not(-1 <= x0),Not(x0 <= 2),x2 <= -x0^2+2*x0*x1+2*x0+2)),
Or(And(x2-4*x1 <= 2,2*x1 <= -1),And(x2+2*x1 <= -1,-2*x1 <= 1))
],[
Ex([x0],And(-1 <= x0,x0 <= 2,x2 <= -x0^2+2*x0*x1+2*x0+2)),
Or(And(-x1+x2 < 5,-x1^2-2*x1+x2 <= 3),-4*x1+x2 <= 2,2*x1+x2 <= -1)
]]:
