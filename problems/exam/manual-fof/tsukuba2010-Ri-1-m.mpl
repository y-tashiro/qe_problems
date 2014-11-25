###################################
# FILE     : tukuba2010-Ri-1-m.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Tsukuba U. 2010, science [1]
# RELATED  : qebook p.39 problem 1.6
###################################

[[ # (1)
  And((-1)^3/3 - a*(-1)^2/2 <= 3^3/3 - a*3^2/2, a>0),
  And(0<a, a<=7/3)
], [ # (2)
  # f'(x)=0 and f''(x)>0 f(x)<f(-1)
  Ex([x], And(x^2-a*x=0, 2*x-a>0, x^3/3-a*x^2/2 <= (-1)^3/3-a*(-1)^2/2, a>0)),
  a >= 2
], [ # (3)'
  Ex([x], And(-1 <= x, x <= 3, k=x^3/3-a*x^2/2, a>0)),
  Or(And(0<a,a<=2, (-3*a-2)/6 <= k, k <= (18-9*a)/2),
     And(2<a,a<=3, -a^3/6 <= k, k <= 0),
     And(a>3, (18-9*a)/2 <= k, k <= 0))
], [ # (3)
  Ex([x], All([x0], Impl(And(-1 <= x0, x0 <= 3),
    And(-1 <= x, x <= 3, k=x^3/3-a*x^2/2, a>0, k <= x0^3/3-a*x0^2/2)))),
  Or(And(0<a,a<=2, (-3*a-2)/6 = k),
     And(2<a,a<=3, -a^3/6 = k),
     And(a>3, (18-9*a)/2 = k))
]]:

