###################################
# FILE     : kobe2010-Bun-1-m.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Kobe U. 2010, humanities [1]
# RELATED  : qebook p.43 problem 1.8
###################################

[[ # (1)
  Ex([x],
    And(a > 0, a*(x-b)^2 = -4*x+4, 2*a*(x-b) = -4)),
  And(a*b = a + 1, a>0)
],[ # (2)-M
  Ex([x,b], All([x0], Impl(
    And(0 <= x0, x0 <= 2),
    And(a > 0, a*b=a+1, 0 <= x, x <= 2, M=a*(x-b)^2, M >= a*(x0-b)^2)))),
  And(a*M = a^2+2*a+1, a>0)
],[ # (2)-m
  Ex([x,b], All([x0], Impl(
    And(0 <= x0, x0 <= 2),
    And(a > 0, a*b=a+1, 0 <= x, x <= 2, m=a*(x-b)^2, m <= a*(x0-b)^2)))),
  Or(And(0<a,a<=1, a*m=1-2*a+a^2),
     And(a>1,m=0))
],[ # (3)
  Ex([a0], All([a, M], Impl(
    And(a*M = a^2+2*a+1, a>0),
    And(a0*Mmin = a0^2+2*a0+1, a0>0, Mmin <= M)))),
  Mmin = 4
]]:

