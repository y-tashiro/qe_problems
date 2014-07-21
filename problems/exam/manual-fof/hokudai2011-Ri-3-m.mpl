###################################
# FILE     : hokudai2011-Ri-3.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Hokkaido U. 2011, science [3]
###################################

[[
    And(
      (0-a)^2 + (0-b)^2 = r,
      (2-a)^2 + (1-b)^2 = r,
      (1-a)^2 + (2-b)^2 = r),
    And(a=5/6,b=5/6,r=25/18)
 ],[
    Ex([r,t], And(
      (0-a)^2 + (0-b)^2 + (0-c)^2 = r,
      (2-a)^2 + (1-b)^2 + (0-c)^2 = r,
      (1-a)^2 + (2-b)^2 + (0-c)^2 = r,
      (t+2-a)^2 + (t+2-b)^2 + (t-c)^2 = r)),
    And(a=5/6,b=5/6,Or(3*c<=1,3*c>=13))
 ]]:
