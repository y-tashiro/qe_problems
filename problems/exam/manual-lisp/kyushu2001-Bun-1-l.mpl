###################################
# FILE     : kyushu2001-Bun-1-l.mpl
# AUTHOR   : R. Fukasaku <ryoya.0323@gmail.com>
# DOMAIN   : reals
# CITATION : first entrance exam Kyusyu U. 2001,  humanities [1]
###################################

[[
All([x0],0 <= x2+1+x0*(2*x0*x1+2*x1+2*x2)),
And(x1^2+x2^2-2*x1 <= 0,-x1 <= 0,-x2 <= 1)
],[
All([x0],Or(All([x1],Or(Not(-1 < x1),Not(x1 < x0),x1*(x1*x2+x2+1) < x0*(x0*x2+x2+1))),Not(-1 < x0))),
And(-x2 <= 0,x2 <= 1,-x2 <= 0,-x2 <= 0)
],[
All([x0],Or(All([x1],Or(Not(-1 < x1),Not(x1 < x0),x1*(x3+1+x1*(x2+x3+2/3*x1*x2)) < x0*(x3+1+x0*(x2+x3+2/3*x0*x2)))),Not(-1 < x0))),
And(Or(x2^2+x3^2-2*x2 <= 0,-x3 < 0),-x2 <= 0,Or(x2 < 1,x2^2+x3^2-2*x2 <= 0),x3 <= 1)
]]:

