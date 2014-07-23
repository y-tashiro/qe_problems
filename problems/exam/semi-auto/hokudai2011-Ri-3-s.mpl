###################################
# FILE     : hokudai2011-Ri-3.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : first entrance exam Hokkaido U. 2011, science [3]
# GENERATED: 2013/02, 2013-02-09-note.txt: CCG derivation
###################################

[[
Ex([_x3a, _x3b, _x3c],
  And(Or(Not(_x3a = 0),
         Not(_x3b = 0),
         Not(_x3c = 0)),
      Ex([_x3p, _x3q, _x3r],
        And(Ex([Sr],
              And(Ex([t],
                    (((((t * _x3a) + _x3p) - a)^2) + (((((t * _x3b) + _x3q) - b)^2) + ((((t * _x3c) + _x3r) - c)^2))) = (Sr^2)),
                  0 < Sr,
                  (((0 - a)^2) + (((0 - b)^2) + ((0 - c)^2))) = (Sr^2),
                  (((1 - a)^2) + (((2 - b)^2) + ((0 - c)^2))) = (Sr^2),
                  (((2 - a)^2) + (((1 - b)^2) + ((0 - c)^2))) = (Sr^2))),
            Ex([lp, lq],
              And(Ex([lr],
                    And(0 = ((_x3b * (_x3r - lr)) - (_x3c * (_x3q - lq))),
                        0 = ((_x3c * (_x3p - lp)) - (_x3a * (_x3r - lr))))),
                  0 = ((_x3a * (_x3q - lq)) - (_x3b * (_x3p - lp))))),
            All([P0, P1, P2],
              Or(And(P0 = (P2 + 2),
                     P1 = (P2 + 2)),
                 All([t2],
                   Or(Not(P0 = ((t2 * _x3a) + _x3p)),
                      Not(P1 = ((t2 * _x3b) + _x3q)),
                      Not(P2 = ((t2 * _x3c) + _x3r)))))),
            All([P4],
              Ex([t3],
                And(P4 = ((t3 * _x3c) + _x3r),
                    (P4 + 2) = ((t3 * _x3a) + _x3p),
                    (P4 + 2) = ((t3 * _x3b) + _x3q)))))),
      Ex([la, lb],
        And(Ex([lc],
              And(Or(Not(la = 0),
                     Not(lb = 0),
                     Not(lc = 0)),
                  0 = ((_x3b * lc) - (_x3c * lb)),
                  0 = ((_x3c * la) - (_x3a * lc)))),
            0 = ((_x3a * lb) - (_x3b * la)))))),
  And(a=5/6,b=5/6,Or(3*c<=1,3*c>=13))
]]:

