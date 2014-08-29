###################################
# FILE     : tokyo2009-Bun-1-l.mpl
# AUTHOR   : Y. Zhan <pon.zhan@gmail.com>
# DOMAIN   : reals
# CITATION : first entrance exam U. of Tokyo 2009,  humanities [1]
# Note     :
###################################


[[
And(Ex([x1],And(Ex([x2],And((x2-1)^2+x1^2 = (x0+1)^2,x1^2+x2^2 = (2-x0)^2)),0 < x1)),x0 < 2),
And(-x0 < 0,x0 < 1)
],
[
And(Ex([x1],And(Ex([x2],And((x2-1)^2+x0^2 = (x1+1)^2,x0^2+x2^2 = (2-x1)^2)),x1 < 2)),0 < x0),
And(-x0 < 0,x0^2 <= 2)
],
[
And(-x0 < 0,x0^2 <= 2,All([x1],Or(Not(-x1 < 0),Not(x1^2 <= 2),x1 <= x0))),
And(-x0 < 0,x0^2-2 = 0)
]]:
