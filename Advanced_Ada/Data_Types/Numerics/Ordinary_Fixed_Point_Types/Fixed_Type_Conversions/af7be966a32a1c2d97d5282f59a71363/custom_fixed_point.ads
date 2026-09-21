package Custom_Fixed_Point is
   D_31 : constant := 2.0 ** (-31);
   D_48 : constant := 2.0 ** (-48);

   type TQ31 is
     delta D_31
     range -1.0 .. 1.0 - D_31;

   type TQ15_48 is
     delta  D_48
     range -2.0 ** 15 ..
            2.0 ** 15 - D_48;

end Custom_Fixed_Point;