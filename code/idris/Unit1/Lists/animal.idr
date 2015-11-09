module Animal

import bool
import relation

|||An animal has a name, a number of feet, and a potential carnivorous capacity

record Animal where
       constructor MkAnimal
       name: String
       feet: Nat
       carnivore: bool

a1: Animal
a1 = MkAnimal "Giraffe" 4 false

a2: Animal
a2 = MkAnimal "Lion" 4 true

a3: Animal
a3 = MkAnimal "Elephant" 4 false

n1: String
n1 = name a1
n2: String
n2 = name a2
n3: String
n3 = name a3

f1: Nat
f1 = feet a1
f2: Nat
f2 = feet a2
f3: Nat
f3 = feet a3

c1: bool
c1= carnivore a1
c2: bool
c2= carnivore a2
c3: bool
c3 = carnivore a3
 


