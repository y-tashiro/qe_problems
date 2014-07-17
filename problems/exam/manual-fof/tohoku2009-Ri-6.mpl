###################################
# FILE     : tohoku2009-Ri-6.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Tohoku U. 2009, science [6]
###################################

[[
  Ex([x1,x2,x3,x4],
    And(x1<x2,x2<x3,x3<x4,
     abs(x1*(x1-2))+2*a*abs(x1)-4*a*abs(x1-2)-1=0,
     abs(x2*(x2-2))+2*a*abs(x2)-4*a*abs(x2-2)-1=0,
     abs(x3*(x3-2))+2*a*abs(x3)-4*a*abs(x3-2)-1=0,
     abs(x4*(x4-2))+2*a*abs(x4)-4*a*abs(x4-2)-1=0)),
  Or(And(-1/8<a,a<0),And(2<9*a,4*a<1),3+7^(1/2)<a)]]:

