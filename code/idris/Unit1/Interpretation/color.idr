module color

import bool
import pair

data color = red | green | blue |yellow | cyan | magenta

complement: color -> color 
complement red = cyan
complement cyan = red
complement yellow = blue
complement blue = yellow
complement green = magenta
complement magenta = green

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: color -> bool
subtractive b = not (additive b)

complements: pair color color ->bool
complements (mkPair red cyan) = true
complements (mkPair cyan red) = true 
complements ( mkPair yellow blue ) = true
complements (mkPair blue yellow ) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair _ _) = false

mixink: pair color color -> color
mixink (mkPair magenta yellow) = red
mixink (mkPair cyan magenta ) = blue
mixink (mkPair cyan yellow) = green
mixink (mkPair yellow magenta)= red 
mixink (mkPair magenta cyan)= blue
mixink (mkPair yellow cyan)= green







 
 
