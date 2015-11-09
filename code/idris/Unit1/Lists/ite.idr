module ite

import bool
import nat

--if then else takes 3 args 
ite: bool ->  a ->  a -> a
ite true tb fb = tb --true branch
ite false tb fb = fb
