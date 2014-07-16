###################################
# FILE     : tokyo2014-Ri-6.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam U. of Tokyo 2014, science [6]
###################################

[[
And(Ex([P0],And(Ex([Q0],And(Ex([xk],And(0 <= xk,xk <= 1,s = xk*P0+(1-xk)*Q0,t = xk*P0*3^(1/2)-(1-xk)*Q0*3^(1/2))),4^(1/2)*(P0^2)^(1/2)+4^(1/2)*(Q0^2)^(1/2) = 6,-2 <= Q0,Q0 <= 0)),0 <= P0,P0 <= 2)),0 <= s,s <= 2),
And(-s^4-18*s^2+12*t^2 <= 81,3*s^2-t^2 <= 0,s^2-3*t^2-8*s <= -16,-t <=
0,-s <= 0,s <= 2,Or(s <= 1,-s^2+3*t^2-8*s <= 16))]
]:

