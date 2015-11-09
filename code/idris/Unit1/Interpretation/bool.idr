-- total functions
-- block comments
-- symbolic arguments
-- pattern matching: any argument

module bool

import pair 

data bool = true | false

id: bool -> bool
id b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

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
|||short for "not and", given a pair of bool values, (a, b), return false if both a and b are true, and false otherwise
nandp: pair bool bool -> bool
nandp (mkPair true true) = false
nandp (mkPair _ _) = true

--hw #4
|||short for "exclusive or", given a pair of bool values, (a, b), return true if exactly one of a or b is true, and false otherwise
xorp: pair bool bool -> bool
xorp (mkPair true false) = true
xorp (mkPair false true) = true
xorp (mkPair _ _) = false  

