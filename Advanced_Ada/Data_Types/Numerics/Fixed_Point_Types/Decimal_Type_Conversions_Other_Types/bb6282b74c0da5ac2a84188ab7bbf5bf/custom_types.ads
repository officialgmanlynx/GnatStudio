package Custom_Types is

   type Decimal is
     delta 10.0 ** (-2) digits 6;
   --  Decimal type

   type TD18 is
     digits 18;
   --  Floating-point type

   type TD18_1000 is
     digits 18
       range -1_000.0 .. 1_000.0;
   --  Range-constrained
   --  floating-point type

end Custom_Types;