module nat

import eq
import bool
import pair
import Serialize

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nnat type
data nat = O | S nat


||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false


||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n


||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

--in class example 
oddb: nat -> bool
oddb n= not (evenb n) 
  
||| given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = S (addp (mkPair n m))


||| given a pair of natural numbers, return its product
multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (mkPair (multp (mkPair n m)) m) 

factp: nat -> nat
factp O = S(O)
factp (S n) = multp (mkPair (S n) (factp (n)) )


--In class work : substitution
|||given a pair of natural numbers, return thier difference
|||if a is less than or equal to b the answer is zero
subtp: pair nat nat -> nat
subtp (mkPair O m) = O
subtp (mkPair n O) = n
subtp (mkPair (S n) (S m)) = subtp (mkPair n m) 


--hw due 9/25 
--Part 2
-- hw 5
|||given a pair of natural numbers, (x, n), return the value of x raised to the nth power
expp: pair nat nat -> nat
expp (mkPair O O ) = O
expp (mkPair O n) = O
expp (mkPair x O) = S O
expp (mkPair x (S n))= multp (mkPair x (expp (mkPair x n))) 

--hw 6
|||given a pair of natural numbers, (a, b), return true if a is less than or equal to b, otherwise return false
lep: pair nat nat -> bool
lep (mkPair O m) = true
lep (mkPair n O)= false
lep (mkPair (S n) (S m)) = lep (mkPair n m) 

--hw 7
|||given a pair of natural numbers, (a, b), return true if a is equal to be, otherwise return false
eqp: pair nat nat -> bool
eqp (mkPair O O) = true
eqp (mkPair O m) = false
eqp (mkPair n O) = false
eqp (mkPair (S n) (S m)) =eqp (mkPair n m)

--hw 8
|||given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gtp: pair nat nat -> bool
gtp (mkPair n m) = not (lep (mkPair n m))
--hw 9
{-
||| given a pair of natural numbers, (a, b), return true of a is greater than or equal to b
gep: pair nat nat -> bool
gep (mkPair n m) = orp (mkPair (gtp (mkPair n m)) (eqp (mkPair n m)) )


--hw 10
|||given a pair of natural numbers, (a, b), return true if a is less than b
ltp: pair nat nat -> bool
ltp (mkPair n m) = not (gep (mkPair n m))

--In class Fibonacci
--0,1, n-first +n- second  ...
--fib: nat -> nat
--fib O = S(O)
--fib n = fib (addp(mkPair (S n) (S (S (n)) )) ) 
-}
--rewritten binary functions 

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

pf: nat -> nat
pf = add (S (S O))

mult: nat -> nat -> nat
mult O m = O
mult (S n) m =  add m ( mult n m)

fact: nat -> nat 
fact O = S(O)
fact (S n) = mult (S n) (fact n) 

sub: nat-> nat -> nat
sub  O m= O
sub  n O = n
sub (S n) (S m) = sub n m 

exp:  nat-> nat -> nat
exp  O n = O
exp  x O= S O
exp x (S n)= mult x (exp x n)

le: nat -> nat -> bool
le  O m = true
le n O= false
le (S n) (S m) = le n m 

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat O m = false
eql_nat n O = false
eql_nat (S n) (S m) = eql_nat n m

gt: nat-> nat -> bool
gt n m = not (le  n m)

ge:  nat-> nat -> bool
ge  n m = or  (gt n m) (eql_nat  n m)

lt: nat-> nat -> bool
lt  n m= not (ge n m)

instance eq nat where 
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
