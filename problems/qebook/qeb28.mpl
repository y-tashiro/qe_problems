###################################
# FILE     : qeb28.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : qebook page. 28 (Ex 1.10)
###################################
[[All([x], Ex([y], And(Or(y<0, x-2*y=0), Impl(x<(y-a)^2, x<=y)))),
  a <= 0]]:

