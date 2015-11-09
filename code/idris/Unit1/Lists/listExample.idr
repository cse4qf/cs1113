module listExample

import animal
import list
import relation
import bool
import pair

|||a record that represents the lists of characteristics of lions, giraffes, and elephants 
animalChart: list Animal
animalChart = a1 :: a2 :: a3 :: nil

|||a record that represents the lists of of lions and giraffes but not elephants 
animalChart': list Animal
animalChart' = a1 :: a2 ::  nil

|||a record that represents the lists of of lions and giraffes but not elephants 
animalChart'': list Animal
animalChart'' =  nil

mapTest: list Nat
mapTest = map feet (animalChart)

mapEmpty: list Nat
mapEmpty = map feet( animalChart'')
 
--count the number of carnivores (1)
countCarnivores: Nat
countCarnivores = query animalChart carnivore countOne plus 0

--sum of feet of carnivores (4)
sumCar: Nat
sumCar = query animalChart carnivore feet plus 0

aveFeet: pair Nat Nat
aveFeet = ave_rel animalChart carnivore feet
