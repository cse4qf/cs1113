module colors

import pair 
--so don't need to write out data pair a b = mkPair a b

data primary= red|yellow|blue

data mixed = violet|orange|green|dred|dblue|dyellow

f: pair primary primary ->mixed
f (mkPair red blue) = violet

f1: pair primary primary -> mixed
f1 (mkPair red yellow) =  orange


--f1 (mkPair red yellow) = orange

--f2 (mkPair yellow blue) = green

--f(mkPair red red) = dred
--f(mkPair blue blue) = dblue
--f(mkPair yellow yellow)= dyellow

