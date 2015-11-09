module foo

import list
import nat

--repetitive, what are the points of variation?
--binary operator, identity operator & type of list element 
fancyplus: list nat -> nat
fancyplus nil = O
fancyplus (h::t) = add h (fancyplus t)

fancymult: list nat -> nat
fancymult nil = S O
fancymult (h::t) = mult h (fancymult t)

fancy: (a->a->a) -> a -> (list a) -> a --last one is return param
fancy f id nil = id
fancy f id (h::t) = f (h) (fancy f id t)
