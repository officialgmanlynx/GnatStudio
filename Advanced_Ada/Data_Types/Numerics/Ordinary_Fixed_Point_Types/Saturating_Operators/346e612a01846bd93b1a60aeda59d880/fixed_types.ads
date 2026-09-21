package Fixed_Types is

   D : constant := 2.0 ** (-15);

   --  Q15: normalized range,
   --  -1.0 .. 1.0 - small
   type Sample is
     delta D
     range -1.0 .. 1.0 - D;

   --  Same representation as Sample,
   --  but "+"/"-"/"*" saturate instead
   --  of raising Constraint_Error.
   type Sat_Sample is new Sample;

   function "+" (A, B : Sat_Sample)
                 return Sat_Sample;
   function "-" (A, B : Sat_Sample)
                 return Sat_Sample;
   function "*" (A, B : Sat_Sample)
                 return Sat_Sample;

end Fixed_Types;