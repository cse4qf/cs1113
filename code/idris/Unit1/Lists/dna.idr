module dna

import list
import pair
import bool
import nat

data base = A | T | C | G

A_T: pair base base
A_T = mkPair A T
T_A: pair base base
T_A = mkPair T A
C_G: pair base base
C_G = mkPair C G
G_C: pair base base
G_C = mkPair C G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

strandlist1: list base
strandlist1= A::T::C::G::nil

strandlist2: list base
strandlist2 = T::A::G::C::nil

complement_strand:(list base) -> (list base)
complement_strand (h::t)= map complement_base (h::t)

strand1:list (pair base base) -> list base 
strand1 nil = nil
strand1 (h ::t) = map fst (h::t)

strand2:list (pair base base) -> list base
strand2 nil = nil
strand2 (h ::t)= map snd (h::t) 

x:base -> pair base base 
x b= (mkPair b (complement_base b))

complete: (list base) -> list (pair base base)
complete l = map x l
--map takes a function & a list

isEqual: base-> base -> Nat
isEqual A A= 1
isEqual T T= 1
isEqual G G= 1
isEqual C C= 1
isEqual _ _ = 0

countBase: list base -> base -> Nat
countBase l b= list.foldr plus 0 (map (isEqual b) l)
--plus is already known by idris
--new function outputs a nat, and is applied to every base in the list 
--all of those nats are added to zero 
--use list.foldr to differentiate from the Idris version
--foldr takes a function, the id of that function (0 for plus) and a
  --list 
