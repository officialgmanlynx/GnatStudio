package Custom_Fixed_Point is

   type Decimal is
     delta 10.0 ** (-9) digits 9;

   D_31 : constant :=  2.0 ** (-31);
   type Fixed_Point is
     delta D_31
     range -1.0 .. 1.0 - D_31;

end Custom_Fixed_Point;