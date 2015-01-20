###################################
# FILE :todai2014-Ri-6-m.mpl
# AUTHOR : Munehiro Kobayashi <munehiro-k@math.tsukuba.ac.jp>
# DOMAIN : reals
# CITATION : first entrance exam U. Tokyo 2013, science [1]
###################################
[[
    Ex([x0,x1,x2,x3,x4,x5,x6,y0,y1,y2,y3,y4,y5,y6], And(
        x0=1, y0=0,
        x1=a*x0-b*y0, y1=b*x0+a*y0,
        x2=a*x1-b*y1, y2=b*x1+a*y1,
        x3=a*x2-b*y2, y3=b*x2+a*y2,
        x4=a*x3-b*y3, y4=b*x3+a*y3,
        x5=a*x4-b*y4, y5=b*x4+a*y4,
        x6=a*x5-b*y5, y6=b*x5+a*y5,
        x0=x6, y0=y6,
        Not(And(x0=x1, y0=y1)),
        Not(And(x0=x2, y0=y2)),
        Not(And(x0=x3, y0=y3)),
        Not(And(x0=x4, y0=y4)),
        Not(And(x0=x5, y0=y5)),
        Not(And(x1=x2, y1=y2)),
        Not(And(x1=x3, y1=y3)),
        Not(And(x1=x4, y1=y4)),
        Not(And(x1=x5, y1=y5)),
        Not(And(x2=x3, y2=y3)),
        Not(And(x2=x4, y2=y4)),
        Not(And(x2=x5, y2=y5)),
        Not(And(x3=x4, y3=y4)),
        Not(And(x3=x5, y3=y5)),
        Not(And(x4=x5, y4=y5))
    ))
    ,And(a=1/2, Or(b=(3^(1/2))/2, b=(-3^(1/2))/2))
]]:
