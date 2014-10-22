###################################
# FILE     : nagoya1999-Ri-2.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Nagoya U. 1999, science 3
# SyNRAC-20140624: timeout
###################################
# ANSWER: 4/5 <= cos < 1


[[
Ex([x3],Ex([x1],Ex([x2],Ex([x0],And(Ex([x4],And(Ex([x5],And(Ex([x9],Ex([x7],Ex([x8],Ex([x6],And(Ex([x11],And(x12 = ((x11*x7+(1-x11)*x6-x4*x1-(1-x4)*x0)*(x5*x1+(1-x5)*x0-x4*x1-(1-x4)*x0)+(x11*x9+(1-x11)*x8-x4*x3-(1-x4)*x2)*(x5*x3+(1-x5)*x2-x4*x3-(1-x4)*x2))/((x4*x1+(1-x4)*x0-x11*x7-(1-x11)*x6)^2+(x4*x3+(1-x4)*x2-x11*x9-(1-x11)*x8)^2)^(1/2)/((x4*x1+(1-x4)*x0-x5*x1-(1-x5)*x0)^2+(x4*x3+(1-x4)*x2-x5*x3-(1-x5)*x2)^2)^(1/2),(x11*x7+(1-x11)*x6)*(3*x11*x7+3*(1-x11)*x6) = (x8-x9)/(x6-x7),Or(Not(x11*x7+(1-x11)*x6 = x4*x1+(1-x4)*x0),Not(x11*x9+(1-x11)*x8 = x4*x3+(1-x4)*x2)),x11*x9+(1-x11)*x8 = (x11*x7+(1-x11)*x6)^3,x11*x9+(1-x11)*x8 = (x11*x7+(1-x11)*x6)^3,x11*x9+(1-x11)*x8 = (x11*x7+(1-x11)*x6)^3)),Ex([x10],And(x4*x1+(1-x4)*x0 = x10*x7+(1-x10)*x6,x4*x3+(1-x4)*x2 = x10*x9+(1-x10)*x8)),Or(Not(x7 = x6),Not(x9 = x8)),Not(x7 = x6)))))),x5*x3+(1-x5)*x2 = (x5*x1+(1-x5)*x0)^3,Or(Not(x4*x1+(1-x4)*x0 = x5*x1+(1-x5)*x0),Not(x4*x3+(1-x4)*x2 = x5*x3+(1-x5)*x2)))),(x4*x1+(1-x4)*x0)*(3*x4*x1+3*(1-x4)*x0) = (x2-x3)/(x0-x1),x4*x3+(1-x4)*x2 = (x4*x1+(1-x4)*x0)^3,x4*x3+(1-x4)*x2 = (x4*x1+(1-x4)*x0)^3)),Or(Not(x1 = x0),Not(x3 = x2)),Not(x1 = x0)))))),
And(4/5 <= x12, x12 < 1)
]]:

