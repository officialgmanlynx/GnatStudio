package Measurement_Defs is

   type Measurements is
     array (Positive range <>) of Float;

   --
   --  Simple subtype declaration:
   --
   subtype Measurements_Sub is Measurements;

   --
   --  Subtype with constraints:
   --
   subtype Measurements_10 is
     Measurements (1 .. 10);

   --
   --  Subtype with dynamic predicate
   --  (array can only have 20 components
   --  at most):
   --
   subtype Measurements_Max_20 is Measurements
       with Dynamic_Predicate =>
              Measurements_Max_20'Length <= 20;

   --
   --  Subtype with constraints and
   --  dynamic predicate (first element
   --  must be 2.0).
   --
   subtype Measurements_First_Two is
     Measurements (1 .. 10)
       with Dynamic_Predicate =>
              Measurements_First_Two (1) = 2.0;

end Measurement_Defs;