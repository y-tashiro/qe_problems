###################################
# FILE     : hokudai1999-Bun-2-3-m.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Hokkaido U. 1999, humanities [2](3)
###################################

[[Ex([a],And(S = -1/3*a^3+1/3*a,0 < a,a < 1)),
  And(243*S^2 <= 4,-S < 0)],
 [All([S],Or(Not(And(243*S^2 <= 4,-S < 0)
),S <= Smax)),
  And(-243*Smax^2 <= -4,-Smax <= 0)],
 [Ex([Smax],And(And(-Smax < 0,243*Smax^2-4 = 0),0 < a,a < 1,Smax = -1/3*a^3+
1/3*a)),
  And(3*a^2-1 = 0,a > 0)]
]:


