--example file from record notation notes
module Person

import bool
import list

record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool

