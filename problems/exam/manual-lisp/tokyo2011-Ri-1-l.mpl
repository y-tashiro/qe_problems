###################################
# FILE     : tokyo2011-Ri-1-l.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Tokyo U. 2011, science [1](1)
###################################

[[
And(Ex([x1],And(Ex([x2],And(x0^2*x2^2+2*x0^2*x2+x0^2-2*x0*x2+x2^2-2*x0 = 0,
  Or(x1-x2 <> 0,And(x0 <> 0,x1-x2 <> 0)),
  Or(
    And(-x0 <= -1,-x1+x2 <= 0,x0*x1-x0*x2-x1+x2-2*x3 = 0),
    And(-x1+x2 <= 0,x0 < 1,x0*x1-x0*x2-x1+x2+2*x3 = 0),
    And(-x0 <= -1,x1-x2 < 0,x0*x1-x0*x2-x1+x2+2*x3 = 0),
    And(x0 < 1,x1-x2 < 0,x0*x1-x0*x2-x1+x2-2*x3 = 0))
  )),
  x0^2*x1^2+2*x0^2*x1+x0^2-2*x0*x1+x1^2-2*x0 = 0)),-x0 < 0,x0 < 1),
And(-x0 < 0,-x3 < 0,x0 < 1,x0^4*x3^2+2*x0^2*x3^2-2*x0^3+4*x0^2+x3^2-2*x0 = 0)
]]:


