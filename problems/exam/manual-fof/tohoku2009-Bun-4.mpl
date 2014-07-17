###################################
# FILE     : tohoku2009-Bun-4.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Hokkaido U. 2009, humanities [4]
###################################

[[
  All([x,y], Impl(
    y = x^2-2*a*x+a^2+a+2,
    2*y > x+1+3*abs(x-1))),
  And(1<8*a, a<2)
]]:

