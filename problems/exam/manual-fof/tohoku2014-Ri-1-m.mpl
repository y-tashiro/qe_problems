###################################
# FILE     : tohoku2014-Ri-1-m.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# CITATION : first entrance exam Tohoku U. 2014, science [1]
# DOMAIN   : reals
###################################

[[
  Ex([t], And(x = t + 1/(3*t), 0 < t, t<=1/2)),
  x >= 7/6
], [
  Ex([x], And(x^2 + a*x + b = 0, x >= 7/6)),
  Or(And(-7/3<a, b <= -49/36-7*a/6),
     And(a <= -7/3, b <= a^2/4))
]]:

