###################################
# FILE     : hokudai2010-Ri2-1-m.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : second entrance exam Hokkaido U. 2010, science [1]
# RELATED  : qebook p.39 problem 1.7
###################################

[[ # (2)-range
	Ex([x,y], And(k=x+2*y, x^2+y^2<=25, (y-2*x-10)*(y+x+5)<=0)),
	And(-10 <= k, k^2 <= 125)
],[ # (2)-m
	All([x0, y0], Ex([xm, ym], Impl(
		And(x0^2+y0^2<=25, (y0-2*x0-10)*(y0+x0+5)<=0),
		And(xm^2+ym^2<=25, (ym-2*xm-10)*(ym+xm+5)<=0, xm+2*ym <= x0+2*y0,
		m = xm+2*ym)))),
	-10 = m
],[ # (2)-m
    And(m=xm+2*ym,
	All([x0, y0], Impl(
		And(x0^2+y0^2<=25, (y0-2*x0-10)*(y0+x0+5)<=0),
		And(xm^2+ym^2<=25, (ym-2*xm-10)*(ym+xm+5)<=0, xm+2*ym <= x0+2*y0)))),
	And(-10 = m, xm=0, ym=-5)
],[ # (2)-M
	All([x0, y0], Ex([xm, ym], Impl(
		And(x0^2+y0^2<=25, (y0-2*x0-10)*(y0+x0+5)<=0),
		And(xm^2+ym^2<=25, (ym-2*xm-10)*(ym+xm+5)<=0, xm+2*ym >= x0+2*y0,
		M = xm+2*ym)))),
	And(M > 0, M^2=125)
],[ # (2)-M
	Ex([M],
		And(xm^2+ym^2<=25, (ym-2*xm-10)*(ym+xm+5)<=0, M = xm+2*ym,
		M > 0, M^2=125)),
	And(xm^2=5, xm>0, ym^2=20, ym>0)
],[ # (3)
	All([x0, y0], Ex([xm, ym], Impl(
		And(x0^2+y0^2<=25, (y0-2*x0-10)*(y0+x0+5)<=0),
		And(xm^2+ym^2<=25, (ym-2*xm-10)*(ym+xm+5)<=0,
          a*x0+y0 <= a*xm+ym,
		  xm=-3, ym=4)))),
	And(-2 <= a, 4*a <= -3)
]]:



