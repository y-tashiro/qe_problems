##################################
# FILE     : nagoya1999-Ri-2.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Nagoya U. 1999, science [2]
###################################

# P(   t,    t^3)
# Q(-2*t, -8*t^3)
# R( 4*t, 64*t^3)

# C = cos(PQR) 
# PR^2 = PQ^2 + QR^2 - 2*PQ*QR*C

[[
Ex([t], And(t <> 0,
  (t-4*t)^2 + (t^3-64*t^3)^2 = 
  (t+2*t)^2 + (t^3+8*t^3)^2 +
  (4*t+2*t)^2+(64*t^3+8*t^3)^2 -
  2 * ((t+2*t)^2 + (t^3+8*t^3)^2)^(1/2) * ((4*t+2*t)^2+(64*t^3+8*t^3)^2)^(1/2) * C)),
 And(4/5 <= C, C < 1)]]:

