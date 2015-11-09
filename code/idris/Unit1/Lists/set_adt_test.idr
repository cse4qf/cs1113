module set_adt_test

import nat
import pair
import bool
import list
import option

import Serialize
import eq

import set_adt

--mkSet nil
r1: set nat
r1= set_remove (S O) (mkSet ((S O)::nil))
 
--S O   
c1: nat
c1= set_cardinality (mkSet ((S O)::nil)) 
 
--true
m1: bool
m1= set_member (S O) (mkSet ((S O)::nil)) 
--false
m2: bool
m2 = set_member (S O) (mkSet nil)

--mkSet S O
u1: set nat 
u1 = set_union (mkSet (S O::nil)) (mkSet (S O::nil))

--mkSet (S O:: nil)
i1: set nat
i1 =  set_intersection (mkSet (S O::nil)) (mkSet (S(S O)::S O::nil))
--mkSet nil
i2: set nat
i2 = set_intersection (mkSet (S O::nil)) (mkSet (S(S O)::nil))

--mkSet nil bc the first set doesn't have anything that the second set
  --doesn't have
d1: set nat
d1= set_difference (mkSet ((S O)::nil)) (mkSet (S(S O)::S O::nil))
--mkSet S(S O) :: nil 
d2: set nat
d2 = set_difference (mkSet (S(S O)::S O::nil)) (mkSet (S O::nil))

--false 1 is odd
f1: bool
f1= set_forall evenb (mkSet (S(S(S(S O)))::S O::nil))
--true
f2: bool
f2= set_forall evenb (mkSet (S(S(S(S O))):: S(S O)::nil))

--true, 2 is even
e1:bool
e1= set_exists evenb (mkSet (S(S O)::nil))

--none bc 1 is odd
w1:option nat
w1= set_witness evenb (mkSet (S O::nil))
--some (S(S O))
w2: option nat
w2 = set_witness evenb (mkSet (S(S O)::nil))

--(t, f) & (1, 2)= mkSet (mkPair true (S O):: etc (t,2) (f,1) (f,2) 
p1:set (pair bool nat)
p1= set_product (mkSet (true::false::nil)) (mkSet (S(S O)::(S O)::nil))
-- (t) & (1, 2) = mkSet (mkPair true (S (S O)) :: mkPair true (s O) ::nil)
p2: set (pair bool nat)
p2 = set_product (mkSet (true::nil)) (mkSet (S(S O) :: (S O) :: nil)) 

--true
set_eql1: bool
set_eql1 = set_eql (mkSet (true::nil)) (mkSet (true::nil))
--false
set_eql2: bool
set_eql2 = set_eql (mkSet (true::nil)) (mkSet (nil))

--"{True, False, }"
t1: String
t1 = set_toString (mkSet (true::false::nil))
