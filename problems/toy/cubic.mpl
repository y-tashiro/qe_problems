###################################
# FILE     : cubic.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : NONE
###################################

[
  [Ex([x], And(x>=0, x^3+b*x^2+c*x+d = 0)),
   Or(d <= 0,
   And( b < 0, 27*d^2 - 18*b*c*d + 4*b^3*d + 4*c^3 - b^2*c^2 <= 0 ),
   And( c < 0, 27*d^2 - 18*b*c*d + 4*b^3*d + 4*c^3 - b^2*c^2 <= 0 ))
  ],
  [Ex([x], And(x>=0, x^3+b*x^2+c*x+d < 0)),
   Or(d < 0,
   And( b < 0, 4*c - b^2 < 0, d = 0),
   And( b < 0, 27*d^2 - 18*b*c*d + 4*b^3*d + 4*c^3 - b^2*c^2 < 0 ),
   And( c < 0, 27*d^2 - 18*b*c*d + 4*b^3*d + 4*c^3 - b^2*c^2 < 0 ))
  ],
  [Ex([x], And(x>0, x^3+b*x^2+c*x+d = 0)),
   Or(d < 0,
   And( b < 0, 27*d^2 - 18*b*c*d + 4*b^3*d + 4*c^3 - b^2*c^2 <= 0 ),
   And( c < 0, 27*d^2 - 18*b*c*d + 4*b^3*d + 4*c^3 - b^2*c^2 <= 0 ))
  ],
  [Ex([x], And(x>0, x^3+b*x^2+c*x+d < 0)),
   Or(d < 0,
   And( b < 0, 4*c - b^2 < 0, d = 0),
   And( b < 0, 27*d^2 - 18*b*c*d + 4*b^3*d + 4*c^3 - b^2*c^2 < 0 ),
   And( c < 0, 27*d^2 - 18*b*c*d + 4*b^3*d + 4*c^3 - b^2*c^2 < 0 ))
  ]
]:

