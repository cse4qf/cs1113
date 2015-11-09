module Box

import unit

data Box = mkBox unit

b1: Box
b1 = (mkBox mkUnit) --only two terms possible

unbox: Box -> unit
unbox (mkBox b) = mkUnit

