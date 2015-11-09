module Person

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
    constructor MkPerson
    name : String
    age : Nat

-- An example value of type Person
p: Person
p = MkPerson "Tommy" 3

p1: Person
p1 = MkPerson "Claire" 18

p2: Person
p2 =  MkPerson "Charlotte" 21

-- And now here's the key idea: The
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3
t1: Nat
t1 = age p1
t2: Nat
t2= age p2

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"
n1: String
n1 = name p1
n2: String
n2 = name p2

--p': Person
