###################################
# FILE     : chart-2B-yellow-08CY2E172.mpl
# CITATION : chart-2B-yellow-08CY2E172.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
###################################

[[
  Ex([p, q], And(
    p < q,
    m*p = p^2+1,
    m*q = q^2+1)),
  Or(m<-2,m>2)
],[
  Ex([p, q, m], And(
    p < q,
    m*p = p^2+1,
    m*q = q^2+1,
    2*x = p + q,
    2*y = m * (p+q))),
   And(y=2*x^2, x^2>1)
]]:


