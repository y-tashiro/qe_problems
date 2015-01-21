###################################
# FILE     : weispfenning98.mpl
# AUTHOR   : Ryoya Fukasaku <ryoya.0323@gmail.com>
# DOMAIN   : reals
# CITATION : Weispfenning, V. A New Approach to Quantifier Elimination for Real Algebra. Quantifier Elimination and Cylindrical Algebraic Decomposition, pp. 376-392, Springer, 1998.
###################################

[
[Ex([u,v],And(x=u*v,y=v,z=u^2)),
Or(And(y <> 0,-y^2*z+x^2 = 0),And(y = 0,x = 0,-z <= 0))],
[All([x,y],Impl(b^2*(x-c)^2+a^2*y^2-a^2*b^2=0,x^2+y^2<=1)),
And(Or(-a <= 0,c < 1),Or(-a^2+2*b^2+c^2 < 1,-a^2*b^2+b^4+b^2*c^2+a^2-b^2 <= 0),a <> 0,b <> 0,-c < 1,a+c <= 1,a-c <= 1,c-a <= 1,-c-a <= 1)]
]:

