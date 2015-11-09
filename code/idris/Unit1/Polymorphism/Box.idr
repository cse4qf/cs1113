module Box

import bool
import unit

data Box t = mkBox t



unbox: Box t -> t
unbox (mkBox b) = b

