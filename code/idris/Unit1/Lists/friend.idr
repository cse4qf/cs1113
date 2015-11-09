module friend

import bool 

||| a friend is someone who is or  isn't trustworthy (bool)
||| who has a name (String)
||| and who has an age in years (prelude version of nat: Nat)

data friend = mkFriend bool String Nat 

f1: friend
f1 = mkFriend true "Claire" 18

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getName: friend -> String
getName (mkFriend b s n) = s

getTrust: friend -> bool
getTrust (mkFriend b s n) = b

--setName: friend -> String -> friend
--setName (mkFriend b s n) n' = mkFriend b s n'  
--makes new person, field override funcion


