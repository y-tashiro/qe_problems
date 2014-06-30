###################################
# FILE     : kyoto1999-Ri-1.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Kyoto U. 1999, science [1]
###################################

[[
Ex([p,q,S], And( 
  S = area([y-x^2, y-p^2 - (p^2-q^2)/(p-q)*(x-p)], And(p<>q), [p,q,x,y]),
  S = 1,
  X = (p+q)/2,
  Y = (p^2+q^2)/2)),
 Y = X^2 + (36)^(1/3)/4]]:


