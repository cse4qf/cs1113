module Box

import Serialize
import bool
import unit
import eq

data Box t = mkBox t



unbox: Box t -> t
unbox (mkBox b) = b

--typeclass instances /overloaded operators

eql_box: (eq a )=> Box a -> Box a -> bool
eql_box (mkBox v1) (mkBox v2) = eql v1 v2

--if a is a member of the eq type class then can build record for type
  --box a, v1 is of type a so you can use overloaded comparison
  --operator for objects of type a
instance (eq a)=>eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql v1 v2
 

instance (Serialize a) => Serialize (Box a ) where
  toString (mkBox b) = "(" ++ (toString b) ++ ")"
