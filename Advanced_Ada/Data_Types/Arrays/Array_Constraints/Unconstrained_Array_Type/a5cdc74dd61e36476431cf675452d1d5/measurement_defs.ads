package Measurement_Defs is

   type Measurements is
     array (Positive range <>) of Float;
   --       ^ Bounds are of type Positive,
   --         but not known at this point.

end Measurement_Defs;