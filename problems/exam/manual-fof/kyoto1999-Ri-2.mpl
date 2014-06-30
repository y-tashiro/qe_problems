###################################
# FILE     : kyoto1999-Ri-2.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Kyoto U. 1999, science [2]
# formulation problem
###################################
# Problem: Find locus of point P such that |PA||PB|+PA*PB=c (c>0) where A,B are points.
# Answer: an ellipse with two focus points A and B 

# A(-a, 0)
# B(+a, 0)
# P( X, Y)
[[
	And(a>0,((X-a)^2+Y^2)^(1/2) * ((X+a)^2+Y^2)^(1/2) + (X-a)*(X+a) + Y^2 = c, c>0),
	And(a>0,4*Y^2*a^2+2*X^2*c+2*Y^2*c-2*a^2*c-c^2 = 0,-c < 0)
]]:







