###################################
# FILE     : quad.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# CITATION : NONE
# DOMAIN   : reals
###################################

[
[All([x], x^2+b*x+c > 0), b^2-4*c < 0],
[All([x], x^2+b*x+c >= 0), b^2-4*c <= 0],
[Ex([x], a*x^2+b*x+c = 0), Or(And(a<>0,b^2-4*a*c>=0),And(a=0,b<>0),And(a=0,b=0,c=0))],
[Ex([x], And(x >= 0, a*x^2+b*x+c = 0)), 
Or(c = 0,
And(c <= 0, 4*a*c - b^2 < 0, b >= 0),
And(c >= 0, 4*a*c - b^2 < 0, b <= 0),
And(4*a*c - b^2 <= 0, b <= 0, a > 0),
And(4*a*c - b^2 <= 0, b >= 0, a < 0))
],
[Ex([x], And(x > 0, a*x^2+b*x+c = 0)), 
Or(
And(4*a*c - b^2 >= 0, c = 0, a = 0),
And(4*a*c - b^2 < 0, b <= 0, a > 0),
And(4*a*c - b^2 < 0, b >= 0, a < 0),
And(c < 0, 4*a*c - b^2 <= 0, b > 0),
And(c > 0, 4*a*c - b^2 <= 0, b < 0))
]
]:
