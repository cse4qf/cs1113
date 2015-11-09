module dairy

import list 
import pair

data product = milkCream | butter | cheese | frozen | dry

data dairy = mkDairy product Nat Nat Nat Nat Nat

milkCream_: dairy
milkCream_ = mkDairy milkCream  2738 2450 2328 2099 1988

butter_: dairy
butter_= mkDairy butter  54 45 44 45 56

cheese_: dairy
cheese_= mkDairy cheese 164 219 279 325 360

frozen_: dairy
frozen_= mkDairy frozen 258 239 261 281 239

dry_: dairy
dry_ =mkDairy dry 177 105 116 90 116 

productName: dairy -> product
productName  (mkDairy p seventies eighties nineties zeroes tens)=p 

poundsin1970: dairy -> Nat
poundsin1970  (mkDairy p seventies eighties nineties zeroes tens ) = seventies 

poundsin1980: dairy -> Nat
poundsin1980  (mkDairy p seventies eighties nineties zeroes tens ) = eighties

poundsin1990: dairy -> Nat
poundsin1990  (mkDairy p seventies eighties nineties zeroes tens ) = nineties

poundsin2000: dairy -> Nat
poundsin2000  (mkDairy p seventies eighties nineties zeroes tens ) = zeroes

poundsin2012: dairy -> Nat
poundsin2012  (mkDairy p seventies eighties nineties zeroes tens ) = tens  
 
dairyChart: list dairy 
dairyChart = cons milkCream_ (cons butter_ (cons cheese_ (cons frozen_ (cons dry_ nil))))     

 
update1970: pair dairy Nat -> dairy
update1970  (mkPair (mkDairy p seventies eighties nineties zeroes tens) x) = mkDairy p  x eighties nineties zeroes tens  

update1980: pair dairy Nat -> dairy
update1980  (mkPair (mkDairy p seventies eighties nineties zeroes tens) x) = mkDairy p  seventies x nineties zeroes tens 
 
update1990: pair dairy Nat -> dairy
update1990  (mkPair (mkDairy p seventies eighties nineties zeroes tens) x) = mkDairy p  seventies eighties x zeroes tens 

update2000: pair dairy Nat -> dairy
update2000  (mkPair (mkDairy p seventies eighties nineties zeroes tens) x) = mkDairy p  seventies eighties nineties x tens 

update2012: pair dairy Nat -> dairy
update2012  (mkPair (mkDairy p seventies eighties nineties zeroes tens) x) = mkDairy p  seventies eighties nineties zeroes x 
 
