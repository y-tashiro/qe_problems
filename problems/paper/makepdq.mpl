###################################
# FILE     : pdq.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# NOTE     : projection undefinable problems
# DOMAIN   : reals
# CITATION : C. W. Brown.  "Solution Formula Construction for Truth Invariant CAD's".  PhD thesis, University of Delaware, 99.
###################################

[[
   Ex([y], And(x^2+y^2=1, y > x)),
   Or(2*x^2<1, And(-1 <= x, x <= 0))
], [
   Ex([z], And(z^2+y^2+x^2-1 = 0, z+2*y+x-1 < 0)),
   Or(And(y^2+x^2-1 <= 0, 5*y+2*x-2 < 0),
      And(y^2+x^2-1 <= 0, 5*x+3 < 0),
      5*y^2+(4*x-4)*y+2*x^2-2*x < 0)
]]:


