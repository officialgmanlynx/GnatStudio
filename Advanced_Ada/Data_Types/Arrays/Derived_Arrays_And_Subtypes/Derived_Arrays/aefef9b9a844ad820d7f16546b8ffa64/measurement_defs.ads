package Measurement_Defs is

   type Measurements is
     array (Positive range <>) of Float;

   --
   --  New array type:
   --
   type Measurements_Derived is
     new Measurements;

   --
   --  New array type with
   --  default component value:
   --
   type Measurements_Def30 is
     new Measurements
       with Default_Component_Value => 30.0;

   --
   --  New array type with constraints:
   --
   type Measurements_10 is
     new Measurements (1 .. 10);

end Measurement_Defs;