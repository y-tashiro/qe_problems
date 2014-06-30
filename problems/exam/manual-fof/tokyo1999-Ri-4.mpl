###################################
# FILE     : tokyo1999-Ri-4.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Tokyo U. 1999, science [4]
# SyNRAC-20140624: timeout
###################################

# A (x-a1)^2 + (y-a2)^2 <= a3^2
# B (x-b1)^2 + (z-b2)^2 <= b3^2

[[Ex([a1,a2,a3,b1,b2,b3], And(
  (a1^2+a2^2)^(1/2) + a3 <= 1,
  (b1^2+b2^2)^(1/2) + b3 <= 1,
  Ex([x,y,z], And( # 円周上で共有点をもつ
    (x-a1)^2 + (y-a2)^2 = a3^2, 
    (x-b1)^2 + (z-b2)^2 = b3^2)),
  All([x1,x2], Impl(And(  # 共有点は一点
    (x1-a1)^2 + (0-a2)^2 <= a3^2, 
    (x1-b1)^2 + (0-b2)^2 <= b3^2,
    (x2-a1)^2 + (0-a2)^2 <= a3^2, 
    (x2-b1)^2 + (0-b2)^2 <= b3^2),
    And(x1=x2))),
  R = a3 + b3, a3 >= 0, b3 >= 0)),
   And(0 <= R, R <= 9/8)],
 [Ex([a1,a2,a3,b1,b2,b3], And(
  All([x,y], 
    Impl((x-a1)^2 + (y-a2)^2 <= a3^2, 
    x^2+y^2 <= 1)),
  All([x,z], 
    Impl((x-b1)^2 + (z-b2)^2 <= b3^2,
    x^2+z^2 <= 1)),
  Ex([x,y,z], And( # 共有点をもつ
    (x-a1)^2 + (y-a2)^2 <= a3^2, 
    (x-b1)^2 + (z-b2)^2 <= b3^2)),
  All([x1,x2,y1,y2,z1,z2], Impl(And(
    (x1-a1)^2 + (y1-a2)^2 <= a3^2, 
    (x1-b1)^2 + (z1-b2)^2 <= b3^2,
    (x2-a1)^2 + (y2-a2)^2 <= a3^2, 
    (x2-b1)^2 + (z2-b2)^2 <= b3^2),
    And(x1=x2,y1=y2,z1=z3))),
  R = a3 + b3, a3 >= 0, b3 >= 0)),
   And(0 <= R, R <= 9/8)]]:

