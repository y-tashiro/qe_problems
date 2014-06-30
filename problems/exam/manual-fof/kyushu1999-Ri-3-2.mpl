###################################
# FILE     : kyushu1999-Ri-3-2.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Kyushu U. 1999, science [3](2)
###################################

# (1) x*y-x^3 = 2*k

[[
  Ex([x,y], And(x*y-x^3 = 2*k, y=a, k >= 0)),
  k >= 0],
 [And(
	Ex([x,y], And(x*y-x^3 = 2*k, y=a, k >= 0)),
	All([x1,x2,y1,y2],
	Impl(And(
	And(x1*y1-x1^3 = 2*k, y1=a, k >= 0),
	And(x2*y2-x2^3 = 2*k, y2=a, k >= 0)),
	And(x1 = x2, y1 = y2)))),
  Or(And(k>0, a < 3* k^(2/3)), And(k=0, a<=0))]]:

