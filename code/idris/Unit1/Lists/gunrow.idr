--coauthors Alicia Zheng and Lynn Zhou

module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

|||A record (row of the wikipedia chart)  of this type reps a country and the death rate per 10,000,000 by gun for homicides, suicides, unintentional, and other
data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austral: gunrow 
austral = mkGunrow Australia 11 62 5 8 

austria: gunrow
austria= mkGunrow Austria 18 268 1 8

honduras: gunrow
honduras= mkGunrow Honduras 648 0 0 0

usa: gunrow
usa = mkGunrow USA 355 670 16 9



countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M:  gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M:  gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M:  gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

gunChart: list gunrow 
gunChart = cons argen (cons austral (cons austria (cons honduras (cons usa nil))))     



