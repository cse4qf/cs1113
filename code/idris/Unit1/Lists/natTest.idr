module natTest

import pair
import bool
import nat
import eq
import Serialize

--refactored 
-- HOMEWORK #3: In the REPL ask what are the types of nat, O and S.
-- Be sure you understand the answers!
--ANSWER:  :t nat is type nat, :t O is type nat, :t S doesn't work,
-- but :t S O is of type nat again 

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two 
t: nat
t = S (S O)

-- three
r: nat
r = S t

-- HOMEWORK #5: Make up some examples of your own. Add them below this
-- comment.
four: nat
four= S (S(t))

five: nat
five = S(four)

--refactored from the bool file:
-- HOMEWORK #7 Bind x to the result of applying isZero to r. Add your
-- code below this comment.
x: bool
x = isZero r

-- HOMEWORK #8 Bind y to the result of applying succ to O. Add code here.
y: nat
y= succ O

-- HOMEWORK #9 Bind a, b, c, d, e respectively to the results of
-- applying evenb to O, (S O), (S (S O)) r, and (S r),
-- respectively. Add your code here. 
a_:bool
a_ =evenb O

b: bool
b= evenb (S O)

c: bool
c = evenb (S (S O)) 

d: bool
d = evenb r

e: bool
e = evenb (S r) 
 
{-
-- HOMEWORK 12 
-- Use the REPL to verify that these tests return the
-- expected results

||| a test, expecting O
h1: nat
h1 = addp (mkPair O O)

||| a test, expecting S (S O)
h2: nat
h2 = addp (mkPair O (S (S O)))

||| a test, expecting (S O)
h3: nat
h3 = addp (mkPair (S O) O)

||| a test, expecting (S (S (S (S (S O)))))
h4: nat 
h4 = addp (mkPair (S (S O)) (S (S (S O))))

--multiplication test cases
m1:nat
m1 = multp (mkPair O  (S(O)) ) 
m2: nat
m2= multp (mkPair (S O) (S (S (O)) ) ) 
m3: nat
m3 =multp (mkPair (S (S (O))) (S(S(O))) )

--factorial test cases
f1: nat
f1 = factp O
f2:nat
f2 = factp (S (S (S (O)))) 
f3: nat
f3 = factp (S (S (O)))

--Hw due 9/25
--test case for nat.idr

--5: test case for exp
e1: nat 
e1= expp (mkPair O (S(O)))

e2: nat 
e2= expp (mkPair (S(O)) (O))

e3: nat 
e3= expp (mkPair (S(S(O))) (S(S(S(O)))))

--6: test case for lep
l1: bool
l1 = lep (mkPair (O) (S(O)))

l2: bool
l2 = lep (mkPair (O) (O) )

l3: bool
l3 = lep (mkPair (S(S(O))) ( S(O)))  

--7: test case for eqp
eqp1: bool 
eqp1= eqp (mkPair (S(O)) O)

eqp2: bool 
eqp2= eqp (mkPair (S(O))  (S(O)))

eqp3: bool
eqp3 = eqp (mkPair O O)

--8: test case for gtp
gtp1: bool 
gtp1= gtp (mkPair (S(O)) (O))

gtp2: bool 
gtp2= gtp (mkPair (S(O)) (S(O)))

gtp3: bool
gtp3= gtp (mkPair (O) (S(O)) )

--9 test case for gep
g1: bool 
g1= gep (mkPair (S(O))(O))

g2: bool 
g2= gep (mkPair (S(O)) (S(O)))

g3: bool
g3= gep (mkPair (O) (S(O)))


--10: test case for ltp
ltp1: bool 
ltp1= ltp (mkPair (S(O))(O))

ltp2: bool 
ltp2= ltp (mkPair (S(O)) (S(S(O))))
 
ltp3:bool
ltp3 = ltp (mkPair (S(O)) (S(S(O))) )
 
--Extra Credit Fibonacci testcase
{-
fib1: nat
fib1 = fib (O)

fib2: nat
fib2 = fib( S(O))

fib3: nat
fib3 = fib( S(S(O))) -}


--hw due 10/6
||| a test, expecting O
add1: nat
add1= add O O

||| a test, expecting S (S O)
add2: nat
add2 = add O (S (S O))

||| a test, expecting (S O)
add3: nat
add3 = add (S O) O

||| a test, expecting (S (S (S (S (S O)))))
add4: nat 
add4 = add (S (S O)) (S (S (S O)))

--expects: O, 2, 4
mult1:nat
mult1 = mult O  (S(O))  
mult2: nat
mult2= mult (S(O)) (S(S (O)))   
mult3: nat
mult3 =mult (S(S(O))) (S(S(O))) 

--expect 1, 6, 2
fact1: nat
fact1 = fact O
fact2:nat
fact2 = fact (S(S(S (O)))) 
fact3: nat
fact3 = fact (S(S(O)))


--expect O O 1
sub1: nat
sub1 = sub O O
sub2: nat
sub2= sub O (S(O))
sub3: nat
sub3 = sub (S(S(O))) (S(O))
--expect O, O,8, O
exp1: nat 
exp1= exp O (S(O))

exp2: nat 
exp2= exp (S(O)) O

exp3: nat 
exp3= exp (S(S(O))) (S(S(S(O))))

exp4: nat
exp4= exp O O

--expect t, t, f
le1: bool
le1 = le O (S(O))

le2: bool
le2 = le O O 

le3: bool
le3 = le (S(S(O)))  (S(O))  

--expect f,t, t
eq1: bool 
eq1= eq (S(O)) O

eq2: bool 
eq2= eq (S(O))  (S(O))

eq3: bool
eq3 = eq O O

--expect t, f, f
gt1: bool 
gt1= gt (S(O)) O

gt2: bool 
gt2= gt (S(O)) (S(O))

gt3: bool
gt3= gt O (S(O))

--expect t,t,f
ge1: bool 
ge1= ge (S(O)) O

ge2: bool 
ge2= ge (S(O)) (S(O))

ge3: bool
ge3= ge O (S(O))


--expect f,t
lt1: bool 
lt1= lt (S(O)) O

lt2: bool 
lt2= lt (S(O)) (S(S(O)))
-}

s: String
s= toString four
