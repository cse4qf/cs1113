module Box1 

import bool

data Box1 = mkBox bool
unbox: Box1 -> bool
unbox (mkBox b) = b

notUnBox: Box1 -> bool
notUnBox (mkBox b)= not (b)
