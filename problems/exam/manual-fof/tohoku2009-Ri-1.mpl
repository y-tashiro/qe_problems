###################################
# FILE     : tohoku2009-Ri-1.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Tohoku U. 2009, science [1]
###################################


[
 [All([a,b,c], Impl(a+b=c, a^3+b^3+3*a*b*c=c^3)), true],
 [All([a,b,c], Impl(a+b>=c, a^3+b^3+3*a*b*c>=c^3)), true]
]:

