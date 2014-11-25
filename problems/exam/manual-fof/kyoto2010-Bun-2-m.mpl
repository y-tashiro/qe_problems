###################################
# FILE     : kyoto2010-Bun-2-m.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Kyoto U. 2010, humanities [2]
# RELATED  : qebook p.37 problem 1.5
###################################

[[
  Ex([x,y], And(k1=2*x+y, 4*x+y <= 9, x+2*y >= 4, 2*x-3*y >= -6)),
  And(2 <= k1, k1 <= 6)
],[
  Ex([x,y], And(k2=x^2+y^2, 4*x+y <= 9, x+2*y >= 4, 2*x-3*y >= -6)),
  And(16 <= 5*k2, 4*k2 <= 45)
],[
  Ex([x,y], All([x0, y0],
    Impl(And(4*x0+y0 <= 9, x0+2*y0 >= 4, 2*x0-3*y0 >= -6),
    And(kmax=2*x+y, 4*x+y <= 9, x+2*y >= 4, 2*x-3*y >= -6, 2*x0+y0 <= kmax)))),
  kmax = 6
],[
  Ex([x,y], All([x0, y0],
    Impl(And(4*x0+y0 <= 9, x0+2*y0 >= 4, 2*x0-3*y0 >= -6),
    And(kmin=2*x+y, 4*x+y <= 9, x+2*y >= 4, 2*x-3*y >= -6, 2*x0+y0 >= kmin)))),
  kmin = 2
]]:

