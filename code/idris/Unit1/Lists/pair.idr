module pair

import eq

data pair a b = mkPair a b

fst: pair a b -> a
fst (mkPair f s) = f

snd: pair a b -> b
snd (mkPair f s) = s 

--type class instances

instance (eq a, eq b) => eq (pair a b) where
  eql (mkPair a1 b1) (mkPair a2 b2) = 
    and (eql a1 a2) (eql b1 b2)


--"must be ibc" circular importing bc bool imports pair
--go to bool and comment out all operations that use pair & tkae away
--import pair
