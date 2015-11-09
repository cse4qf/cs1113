module unit

data unit = mkUnit

u: unit
u= mkUnit

--v: unit
--v= mkUnit

unit_id: unit -> unit
unit_id mkUnit= mkUnit

--can test unit_id u or unit_id mkUnit, smae thing, gives out mkUnit 
