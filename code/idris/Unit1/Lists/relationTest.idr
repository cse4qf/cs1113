module relationTest

import list
import bool
import pair
import people
import relation
import Person

--sum of ages of all women
years'': Nat
years'' = query people gender age plus 0

totalInches'': Nat
totalInches'' = query people gender height mult 1

names'': String
names'' = query people gender name (++) ""

--count the number of women
number: Nat
number = query people gender countOne plus 0 

aveAge': pair Nat Nat
aveAge' = ave_rel people gender age

--make own examples
sumHeightFemales: Nat
sumHeightFemales = query people gender height plus 0

aveHF: pair Nat Nat
aveHF = ave_rel people gender height
