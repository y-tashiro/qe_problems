###################################
# FILE     : tohoku2009-Bun2-4.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : second entrance exam Hokkaido U. 2009, humanities [4]
# RELATED  : qebook p.35 problem 1.4
###################################

[[
  Ex([x,y,t], And(
    x^2+y^2+2*y-1 <= 0,
    x^2+y^2-2*(t+1)*x-2*t^2*y+t^4+t^2+2*t-1 <= 0,
    x^2+y^2+2*(t+1)*x-2*t^2*y+t^4+t^2+2*t-1 <= 0,
    t = 0)), true],
[
  And(t>=0,
  Ex([x,y], And(
    x^2+y^2-2*(t+1)*x-2*t^2*y+t^4+t^2+2*t-1 <= 0,
    x^2+y^2+2*(t+1)*x-2*t^2*y+t^4+t^2+2*t-1 <= 0)),
  All([x1,y1,x2,y2], Impl(And(
    x1^2+y1^2-2*(t+1)*x1-2*t^2*y1+t^4+t^2+2*t-1 <= 0,
    x1^2+y1^2+2*(t+1)*x1-2*t^2*y1+t^4+t^2+2*t-1 <= 0,
    x2^2+y2^2-2*(t+1)*x2-2*t^2*y2+t^4+t^2+2*t-1 <= 0,
    x2^2+y2^2+2*(t+1)*x2-2*t^2*y2+t^4+t^2+2*t-1 <= 0),
    And(x1=x2, y1=y2)))), t = 2^(1/2)-1],
[
  All([x,y,t], Impl(And(
    t=2^(1/2)-1,
    x^2+y^2-2*(t+1)*x-2*t^2*y+t^4+t^2+2*t-1 <= 0,
    x^2+y^2+2*(t+1)*x-2*t^2*y+t^4+t^2+2*t-1 <= 0),
    x^2+y^2+2*y-1 <= 0)), true],
[
  Ex([x,y], And(
    t >= 0,
    x^2+y^2+2*y-1 <= 0,
    x^2+y^2-2*(t+1)*x-2*t^2*y+t^4+t^2+2*t-1 <= 0,
    x^2+y^2+2*(t+1)*x-2*t^2*y+t^4+t^2+2*t-1 <= 0)),
  And(0 <= t, t <= -1 + 2^(1/2))]
]:

