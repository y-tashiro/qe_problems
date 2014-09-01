###################################
# FILE     : tokyo2009-Bun-1-l.mpl
# AUTHOR   : Y. Zhan <pon.zhan@gmail.com>
# DOMAIN   : reals
# CITATION : first entrance exam U. of Tokyo 2009,  humanities [1]
# Note     :
###################################


[[
And(Ex([x3],And(Ex([x4],And(0 <= x4,x4 <= 1,All([x6],Or(Not(0 <= x6),Not(x6 <= 1),x6*(x0*x6+x2) <= x4*(x0*x4+x2))),x5 = x4*(x0*x4+x2)-x3*(x0*x3+x2))),0 <= x3,x3 <= 1,All([x1],Or(Not(0 <= x1),Not(x1 <= 1),x3*(x0*x3+x2) <= x1*(x0*x1+x2))))),0 < x0),
And(Or(And(x5 = 0,x2 = 0,x0 = 0),And(x2-x5 = 0,x0 = 0,-x5 <= 0),And(x2+x5 = 0,x0 = 0,-x5 <= 0),And(x0+x2+x5 = 0,x2 <= 0,-x2-x5 < 0),And(x0+x2-x5 = 0,-x2 <= 0,x2-x5 < 0),And(x0+x2+x5 = 0,-x2-2*x5 <= 0,x2+x5 < 0),And(x0+x2-x5 = 0,-x2+x5 < 0,x2-2*x5 <= 0),And(x0 < 0,-x2 <= 0,x0+x2 <= 0,4*x0^2+4*x0*x2+4*x0*x5+x2^2 = 0),And(x0 < 0,2*x0+x2 <= 0,-x0-x2 <= 0,4*x0*x5+x2^2 = 0),And(-x0 < 0,-x0-x2 <= 0,-x0+x5 <= 0,4*x0^2+4*x0*x2-4*x0*x5+x2^2 = 0),And(-x0 < 0,x0+x2 <= 0,-x0+x5 <= 0,4*x0*x5-x2^2 = 0)),-x0 < 0)
]]: