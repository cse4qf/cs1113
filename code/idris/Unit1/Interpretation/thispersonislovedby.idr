module thispersonislovedby

import pair

--data person = maurice | mary

--thispersonislovedby: person -> person
--thispersonislovedby mary  = maurice
--thispersonislovedby maurice = maurice
--(unnessary since I imported pair already): data pair a b = mkPair (a b)

thispersonislovedby:pair a b -> a
thispersonislovedby( mkPair maurice mary) = maurice
