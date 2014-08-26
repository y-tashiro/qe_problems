###################################
# FILE     : tokyo2013-Bun-1-l.mpl
# AUTHOR   : Y. Zhan <pon.zhan@gmail.com>
# DOMAIN   : reals
# CITATION : first entrance exam U. of Tokyo 2011,  humanities [1]
# Note     : 
###################################


[[
Ex([x1],Ex([x0],And(Ex(x4,Ex(x3,And(x3+x4+x0+x1 = 1,x3-x4+x0-x1 = -1,2/3*x0+2*x3 = 1))),x2 = 27/2*x1^2+6*x0^2-9*x1*x0))),
-32*x2 <= -81
]
[
And(-432*x0^2+288*x0*x1-192*x1^2 <= -81,All([x4],Or(Not(-32*x4 <= -81),27/2*x0^2-9*x0*x1+6*x1^2 <= x4)),2/3*x1+2*x3 = 1,x3+x2+x0+x1 = 1,x3-x2-x0+x1 = -1),
And(4*x3-3 = 0,4*x2-5 = 0,4*x1+3 = 0,4*x0+1 = 0)
]
[
And(-32*x1 <= -81,All([x0],Or(Not(-32*x0 <= -81),x1 <= x0))),
32*x1-81 = 0
]]: