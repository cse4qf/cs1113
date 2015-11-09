module listTest

import nat
import list
import bool
import Serialize


li: list bool
li = true :: false :: true :: true :: nil

lO: list nat
lO = nil --empty list

l1: list nat  --O  
l1= O ::  nil 

l2: list nat
l2 = S O :: S (S O) :: nil --returns 1,2

l3: list nat
l3= S O :: S (S O) :: S (S (S O)) :: nil


lengthO: nat
lengthO= length  lO

length1: nat
length1 = length l1

length2: nat
length2 = length l2

length3: nat
length3 = length l3


appendO: list nat
appendO=  lO ++ l1

append1: list nat
append1=  l1 ++ l2

append2: list nat
append2=  l2 ++ l3

--10/15
lab1:list bool
lab1 = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)
 
lab2: list nat
lab2 = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

s:String
s=toString l2
