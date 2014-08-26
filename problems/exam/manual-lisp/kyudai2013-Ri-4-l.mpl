###################################
# FILE     : kyudai2013-Ri-4-l.mpl
# AUTHOR   : R. Fukasaku <ryoya.0323@gmail.com>
# DOMAIN   : reals
# CITATION : first entrance exam Kyusyu U. 2013, science [4] (1)
# Note     : (1) only.
###################################

[
[
Ex([x1],
  And(Ex([x3],
        And(Ex([x4],
              And(x3 < x4,
                  x0^2+x2^2 = (x4-x3)^2,
                  Or(x4 = -1,x4 = 1),
                  Or(x0^2+x2^2 = (x4-x3)^2,x0^2+x2^2 = (x4+x3)^2),
                  0 < x4,Or(x4 = -1,x4 = 1))),
            0 < x3,
            x3^2 = (x2-1/2)^2+(x0-1/2*3^(1/2))^2,
            x2^2+(1-x1-x0)^2 = x3^2)),
      0 = 1-x1-x0)),
And(-x0 <= 0,3*x2-1 = 0,3*x0^2-1 = 0)
],
[
Ex([x0],
x0 = 1/3*3^(1/2)),true
],
[
And(Ex([x1],
      And(Ex([x2],
            Ex([x3],
              And(Ex([x4],
                      And(x3^2+(1-x4-x2)^2 = x0^2,
                          0 = 1-x4-x2)),
                  x2^2+x3^2 = (x1-x0)^2,
                  x0^2 = (x3-1/2)^2+(x2-1/2*3^(1/2))^2,
                  Or(x2^2+x3^2 = (x1-x0)^2,
                     x2^2+x3^2 = (x1+x0)^2)))),
          0 < x1,
          x0 < x1,
          x1^2 = 1,
          x1^2 = 1)),
    0 < x0),
And(Or(x0+1 = 0,3*x0-1 = 0),x0 < 1,-x0 < 0)
]
]:
