module set

import list
import ite
import bool
import eq

|||mkSet is meant to be private (not for clients, they must go thorugh an interface)
data set a= mkSet (list a )

|||a starting point for builidng any set
new_set: set a
new_set = mkSet nil

--must account for duplicates: if it's not already a member, then add
--it to Set
--signature can't be any type: bc member is limited to types with an
--overloaded equality comparison type  
set_insert: (eq a) =>a -> set a -> set a
set_insert v (mkSet l) = ite (member v l)
                             (mkSet l)
                             (mkSet (v::l))
--hw due 10/26
eql_set: (eq a) => set a-> set a-> bool
eql_set (mkSet l1) (mkSet l2) = same_elements l1 l2
--tab space only for instance

instance (eq a) => eq (set a) where
  eql s1 s2 = eql_set s1 s2

