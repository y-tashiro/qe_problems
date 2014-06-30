###################################
# FILE     : kyoto1999-Ri-6.mpl
# AUTHOR   : GAN <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Kyoto U. 1999, science [6]
###################################

[[
Ex([t], And(
  x = (3*t-t^2) / (t+1),
  y = (3*t^2-t^3) / (t+1),
  0 <= t, t <= 3)),
  And(x^3+x^2*y-3*x*y+y^2 = 0,x >= 0,x <= 1)]
  ]:


  # [S = area(Or(And(x^3+x^2*y-3*x*y+y^2 = 0,x >= 0,x <= 1), y=x),
  #    y>=x, [x,y]), 
  #  S = 43/3 - 20*ln(2)]

# ans = 43/3 - 20*ln(2)
