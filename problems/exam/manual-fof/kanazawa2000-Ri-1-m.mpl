###################################
# FILE : kanazawa2000-Ri-1-m.mpl
# AUTHOR : Y.Tashiro <yuka.kmj.3@gmail.com>
# DOMAIN : reals
# CITATION : first entrance exam Kanazawa U. 2000, science [1]
###################################

[[#(1)
Ex([x],And(All([s],Impl(And(s^2+(a-1)*s+a+2=0,0 <= s,s <= 2),s=x)),x^2+(a-1)*x+a+2=0,0 <= x,x <= 2)),
And(-2<=a,a<-3/4,a=-1)
],[#(2)
Ex([a],And(x^2+(a-1)*x+a+2=0,-2 <= a,a <= -1)),
And(0 <= x,x <= 3)
]]:
