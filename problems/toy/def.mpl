###################################
# FILE     : def.mpl
# GENERATED: 2014-07-16
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# CITATION : NONE
# DOMAIN   : reals
###################################

[
[All([x],     Equiv(y = 1/x, And(x <> 0, x*y=1))),true],
[All([x],     Impl (y = 1/x, And(x <> 0, x*y=1))),true],
[All([x],     Repl (y = 1/x, And(x <> 0, x*y=1))),true],
[All([x], Not(Equiv(y = 1/x, And(x <> 0, x*y=1)))),false],
[All([x], Not(Impl (y = 1/x, And(x <> 0, x*y=1)))),false],
[All([x], Not(Repl (y = 1/x, And(x <> 0, x*y=1)))),false],
[All([x],     Equiv(Not(y <> 1/x), And(x <> 0, x*y=1))),true],
[All([x],     Impl (Not(y <> 1/x), And(x <> 0, x*y=1))),true],
[All([x],     Repl (Not(y <> 1/x), And(x <> 0, x*y=1))),true],
[All([x], Not(Equiv(Not(y <> 1/x), And(x <> 0, x*y=1)))),false],
[All([x], Not(Impl (Not(y <> 1/x), And(x <> 0, x*y=1)))),false],
[All([x], Not(Repl (Not(y <> 1/x), And(x <> 0, x*y=1)))),false],

[All([x],     Equiv(y = (x)^(1/2), And(y >= 0, y^2=x))),true],
[All([x],     Impl (y = (x)^(1/2), And(y >= 0, y^2=x))),true],
[All([x],     Repl (y = (x)^(1/2), And(y >= 0, y^2=x))),true],
[All([x], Not(Equiv(y = (x)^(1/2), And(y >= 0, y^2=x)))),false],
[All([x], Not(Impl (y = (x)^(1/2), And(y >= 0, y^2=x)))),false],
[All([x], Not(Repl (y = (x)^(1/2), And(y >= 0, y^2=x)))),false],
[All([x],     Equiv(Not(y <> x^(1/2)), And(y >= 0, y^2=x))),true],
[All([x],     Impl (Not(y <> x^(1/2)), And(y >= 0, y^2=x))),true],
[All([x],     Repl (Not(y <> x^(1/2)), And(y >= 0, y^2=x))),true],
[All([x], Not(Equiv(Not(y <> x^(1/2)), And(y >= 0, y^2=x)))),false],
[All([x], Not(Impl (Not(y <> x^(1/2)), And(y >= 0, y^2=x)))),false],
[All([x], Not(Repl (Not(y <> x^(1/2)), And(y >= 0, y^2=x)))),false],

[All([x],     Equiv(y = (x)^(1/3), y^3=x)),true],
[All([x],     Impl (y = (x)^(1/3), y^3=x)),true],
[All([x],     Repl (y = (x)^(1/3), y^3=x)),true],
[All([x], Not(Equiv(y = (x)^(1/3), y^3=x))),false],
[All([x], Not(Impl (y = (x)^(1/3), y^3=x))),false],
[All([x], Not(Repl (y = (x)^(1/3), y^3=x))),false],
[All([x],     Equiv(Not(y <> x^(1/3)), y^3=x)),true],
[All([x],     Impl (Not(y <> x^(1/3)), y^3=x)),true],
[All([x],     Repl (Not(y <> x^(1/3)), y^3=x)),true],
[All([x], Not(Equiv(Not(y <> x^(1/3)), y^3=x))),false],
[All([x], Not(Impl (Not(y <> x^(1/3)), y^3=x))),false],
[All([x], Not(Repl (Not(y <> x^(1/3)), y^3=x))),false]
]:

