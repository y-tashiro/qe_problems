###################################
# FILE     : kanazawa2011-Ri-1-m.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# CITATION : first entrance exam Kanazawa U. 2011, science [1]
# DOMAIN   : reals
# RELATED  : qebook p.47 problem 1.10
###################################

# A(2*cos(t), 2*sin(t))
# B(4/3, 0)
# C(cos(t), -sin(t))
[[
  # Ax + By + C = 0
  Ex([A,B,C], And(
    s > 0,
    c^2+s^2=1,
    Or(A<>0,B<>0),
    A * 2*c + B * 2*s + C = 0,
    A * c + B * (-s) + C = 0,
    A * x + B * 0 + C = 0)),
  And(3*x = 4*c, c^2+s^2=1, s>0)
],[
  # S = area of ABC = 2(1-cos(t))sin(t)
  # range of S
   Ex([c,s], And(
     s > 0, c^2+s^2=1,
     S = 2*(1-c)*s)),
  And(0 < S, 4*S^2 <= 27)
],[
  # S = area of ABC = 2(1-cos(t))sin(t)
  # minimize S
  Ex([s], All([cx,sx], Impl(
    And(cx^2+sx^2=1, sx>0),
    And(
     s > 0, c^2+s^2=1,
     S = 2*(1-c)*s,
     S >= 2*(1-cx)*sx)))),
  And(0 < S, 4*S^2 = 27, 2*c=-1)
]]:

