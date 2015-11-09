module eq

import public bool

--polypmorhpic (if eq nat is member of type class, then
class eq a where
  eql: a -> a -> bool
  
--example
instance eq bool where
  eql b1 b2 = eql_bool b1 b2
  
 --nat equivalent is in nat file
