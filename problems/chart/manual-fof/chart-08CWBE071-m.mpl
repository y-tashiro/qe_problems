###################################
# FILE     : chart-2B-whilte-08CWBE071.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# CITATION : chart-2B-whilte-08CWBE071
# DOMAIN   : reals
###################################

[[
  Ex([s, t], And(
    s+t <= 2, s >= 0, t >= 0,
    x = 3*s + t, y = s + 2*t)),
  And(x+2*y<=10, y <= 2*x, x <= 3*y)
], [
  Ex([s, t], And(
    0 <= s, s <= 1, 1 <= t, t <= 2,
    x = 3*s + t, y = s + 2*t)),
  And(y <= 2*x, 2*x-y <= 5, x+5<=3*y, 3*y<=x+10)
]]:

