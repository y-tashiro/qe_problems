###################################
# FILE     : osaka1999-Bun-2-2.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Osaka U. 1999, humanities [2](2)
###################################

[[
Ex([s,a,b,x,y], And(s<>t,
t^2/2 = a*t + b,  # P is on l2
s^2/2 = a*s + b,  # Q is on l2
y=t*x-t^2/2,      # R is on l1
y=s*x-s^2/2,      # R is on l3
a*t = -1,
(t-x)^2 + (t^2/2 - y)^2 >= (s-t)^2 + (s^2/2-t^2/2)^2)), # PR >= PQ
Or(t <= -2, 2 <= t)]]:


