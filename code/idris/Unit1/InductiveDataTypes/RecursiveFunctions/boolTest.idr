module boolTest
import bool
import pair

b1: bool
b1 = true

b2: bool
b2= true

b3: bool
b3 = false

b4: bool
b4 =(not true)

b5: bool
b5 =(not b1)

b6: bool
b6 =not(not b5) 

--Homework due 9/25
--andp test case
a1: bool
a1 = andp (mkPair true true)

a2: bool
a2 = andp (mkPair true false)

a3: bool
a3 = andp (mkPair false true)

a4: bool
a4 = andp (mkPair false false)

--orp test case
o1: bool
o1 = orp (mkPair true true)

o2: bool
o2 = orp (mkPair true false)

o3: bool
o3 = orp (mkPair false true)

o4: bool
o4 = orp (mkPair false false)

--nandp test cases
n1: bool
n1 = nandp (mkPair true true)

n2: bool
n2 = nandp (mkPair true false)

n3: bool
n3 = nandp (mkPair false true)

n4: bool
n4 = nandp (mkPair false false)

--xor test case
x1: bool
x1 = xorp (mkPair true true)

x2: bool
x2 = xorp (mkPair true false)

x3: bool
x3 = xorp (mkPair false true)

x4: bool
x4 = xorp (mkPair false false)

--exam 1 test cases
pand_t_t: bool
pand_t_t = pand true true
-- expect true

pand_t_f: bool
pand_t_f = pand true false
-- expect false

pand_f_t: bool
pand_f_t = pand false true
-- expect false

pand_f_f: bool
pand_f_f = pand false false 
-- expect false



por_t_t: bool
por_t_t = por true true
-- expect true

por_t_f: bool
por_t_f = por true false
-- expect true

por_f_t: bool
por_f_t = por false true
-- expect true

por_f_f: bool
por_f_f = por false false
-- expect false



pxor_t_t: bool
pxor_t_t = pxor true true
-- expect false

pxor_t_f: bool
pxor_t_f = pxor true false
-- expect true

pxor_f_t: bool
pxor_f_t = pxor false true
-- expect true

pxor_f_f: bool
pxor_f_f = pxor false false
-- expect false


pnand_t_t: bool
pnand_t_t = pnand true true
-- expect false

pnand_t_f: bool
pnand_t_f = pnand true false
-- expect true

pnand_f_t: bool
pnand_f_t = pnand false true
-- expect true

pnand_f_f: bool
pnand_f_f = pnand false false 
-- expect true




--hw due 10/7
--expect true
and_t_t: bool
and_t_t = and true true
--expect false
and_f_f: bool
and_f_f = and false false
--expect false
and_t_f: bool
and_t_f = and true false
--expect false
and_f_t: bool
and_f_t = and false true


--expect true
or_t_t: bool
or_t_t = or true true
--expect false 
or_f_f: bool
or_f_f = or false false
--expect true
or_t_f: bool
or_t_f = or true false
--expect true
or_f_t: bool
or_f_t = or false true


--expect false
xor_t_t: bool
xor_t_t = xor true true
--expect false 
xor_f_f: bool
xor_f_f = xor false false
--expect true
xor_t_f: bool
xor_t_f = xor true false
--expect true
xor_f_t: bool
xor_f_t = xor false true


--expect false
nand_t_t: bool
nand_t_t = nand true true
--expect true 
nand_f_f: bool
nand_f_f = nand false false
--expect true
nand_t_f: bool
nand_t_f = nand true false
--expect true
nand_f_t: bool
nand_f_t =nand false true 
