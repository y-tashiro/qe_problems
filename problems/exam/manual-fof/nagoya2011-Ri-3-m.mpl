###################################
# FILE     : nagoya2011-Ri-3-m.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Nagoya U. 2011, science [3](2)
# RELATED  : qebook p.45 problem 1.9
###################################

[[ # (2)
    Ex([x, y, OP, AP, BP], And(
        a > 0, b > 0,
        OP = x^2 + y^2,
        AP = (x-1)^2 + y^2,
        BP = x^2 + (y-1)^2,
        OP*a^2 = AP, OP*b^2 = BP)),
    And(a>0,b>0, (a-b)^2<=2, (a+b)^2>=2)
],[
    Ex([x, y, OP, AP, BP], And(
        a > 0, b > 0,
        OP > 0, OP^2 = x^2 + y^2,
        AP > 0, AP^2 = (x-1)^2 + y^2,
        BP > 0, BP^2 = x^2 + (y-1)^2,
        OP*a = AP, OP*b = BP)),
    And(a>0,b>0, (a-b)^2<=2, (a+b)^2>=2)
]]:

