--homework #10 due Monday 10/12
module list

import nat
import bool
import ite
import eq
import Serialize

--r for right associative, has precedence 7 
infixr 7 ::, ++ --new notation

data list a = nil | (::) a (list a) 

|||return length of any given list
length:list a -> nat
length nil = O
length (n :: l') = S (length l')  
-- n is head, l' is tail
--type of n is a, type of l' is list a

|||append an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h :: (t ++ l2)

|||map a function over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h :: t) = (f h) :: (map f t)

|||give a list & a predicate on elements, return sublist of elements for which the predicate is true
--formatted for readability
--for example f could be function that filters nats in a list for
  --being over a certain number to return bool
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h) -- if f h is true eval to first line otherwise
                     (h :: (filter f t))
                           (filter f t)
foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)
--takes a binary function that outputs 1 thing,  plus the id & a list

--if v it is equal then true, if not, next part of list
member: (eq a ) =>a -> list a -> bool
member v nil = false
member v (h ::t)= ite (eql v h)
                      true
                      (member v t)

--same elements indep of order
instance (eq a) => eq (list a ) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) =
    and (eql h1 h2) (eql t1 t2) 
    
--hw du 10/26 
--takes 2 lists & returns true iff each element in l1 is a member of l2
subset_elements:(eq a)=> list a -> list a-> bool
subset_elements nil (l2) = true
subset_elements (h1::t1) (l2) = and 
                                    (member h1 (l2)) 
                                    (subset_elements t1 (l2))

--true if all elements in l1 are in l2 and vv
same_elements:(eq a) => list a-> list a -> bool 
same_elements (l1) (l2)= and(subset_elements (l1) (l2)) (subset_elements (l2) (l1))
--Extra Credit 
--need type constraint
toStringList:(Serialize a) => list a-> String
toStringList nil = ""
toStringList (h::nil) = toString h
toStringList (h::t) = (toString h) ++ ", " ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString l= "[" ++ (toStringList l) ++ "]"
