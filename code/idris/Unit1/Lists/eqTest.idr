module eqTest

import bool
import eq
import nat
import unit

b: bool
b = (eql true true)

n: bool
n= (eql O O)

u: bool
u= eql mkUnit mkUnit
--made bool a member of eql type class

