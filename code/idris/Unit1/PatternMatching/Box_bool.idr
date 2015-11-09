module Box

import bool

data Box = mkBox bool

b1: Box
b1 = (mkBox true) --only two terms possible

b2: Box
b2 = mkBox false

unbox: Box -> bool
unbox (mkBox b) = b

