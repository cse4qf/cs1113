-- total functions
-- block comments
-- symbolic arguments
-- pattern matching: any argument

module bool
import Serialize

data bool = true | false

id_bool: bool -> bool
id_bool true = true
id_bool _ = false

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

{-
--Due 9/25: Part 1
--Hw #1
|||given a pair of bool values, (a, b), return true if both a and b are true, otherwise return false
andp: pair bool bool -> bool
andp (mkPair true true) = true
andp (mkPair _ _) = false
  
--hw #2
|||given a pair of bool values, (a, b), return false if both a and b are false, otherwise return true
orp:  pair bool bool -> bool 
orp (mkPair false false) = false
orp (mkPair _ _) = true

--hw #3
|||short for "not and", given a pair of bool values, (a, b), return false if both a and b are true, and true otherwise
nandp: pair bool bool -> bool
nandp (mkPair true true) = false
nandp (mkPair _ _) = true 

--hw #4
|||short for "exclusive or", given a pair of bool values, (a, b), return true if exactly one of a or b is true, and false otherwise
xorp: pair bool bool -> bool
xorp (mkPair true false) = true
xorp (mkPair false true) = true
xorp (mkPair _ _) = false  

--"Exam Problem #2: There are 16  possible ways to fill in the result column for a truth table for a binary Boolean function, and there are thus exactly 16_ such functions, and no more."
-}
--#4a explicit
pand:  bool  -> (bool -> bool)
pand  true  = id_bool
pand false  = constFalse

por:  bool  -> (bool -> bool)
por  true  = constTrue
por false  = id_bool

pxor:  bool  -> (bool -> bool)
pxor  true  = not
pxor false  = id_bool

pnand:  bool  -> (bool -> bool)
pnand  true  = not
pnand false  = constTrue


--binary functions (bool -> bool -> bool)  implicit
--hw due 10/7
and: bool -> bool -> bool
and true true = true
and _ _ = false 

--unary function
uf: bool -> bool
uf = (and true)

or: bool -> bool -> bool --binary not ternary
or false false = false
or _ _ = true

xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor _ _ = false

nand: bool -> bool -> bool
nand true true = false
nand _ _ = true

--10/22
eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false


instance Serialize bool where
  toString true = "True"
  toString fale = "False"
