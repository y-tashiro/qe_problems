###################################
# FILE     : tokyo2013-Bun-2-l.mpl
# AUTHOR   : Y. Zhan <pon.zhan@gmail.com>
# DOMAIN   : reals
# CITATION : first entrance exam U. of Tokyo 2013,  humanities [2]
# Note     : 
###################################

[[
All([x0],Or(Not(0 <= x0),
            Not(x0 <= 1),
            x1 = (x0^2+(-2^(1/2)-(x0^2+1)^(1/2))^2)^(1/2)-(x0^2+((x0^2+1)^(1/2)-2^(1/2))^2)^(1/2))),
-x1+2 = 0]]:
