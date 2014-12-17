###################################
# FILE     : deb11.mpl
# GENERATED: 2014-12-16
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : Multi-Objective Optimization using Evolutionary Algorithms: an introduction, Kalyanmoy Deb, 2011
###################################

[[
  Ex([x1,x2], And(
    f = (x1^2+x2-11)^2 + (x1+x2^2-7)^2,
    26 - (x1-5)^2 - x2^2 >= 0,
    20 - 4*x1 - x2 >= 0,
    0 <= x1, x1 <= 6, 0 <= x2, x2 <= 6)),
  And(0 <= f, 83521*f^2-134080972*f+46978340868 >= 0, 167042*f < 134080972)
]]:


