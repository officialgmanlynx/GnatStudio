package Custom_Fixed_Point is
   D_15 : constant := 2.0 ** (-15);
   D_24 : constant := 2.0 ** (-24);
   D_31 : constant := 2.0 ** (-31);

   type TQ15 is
     delta D_15
     range -1.0 .. 1.0 - D_15;

   type TQ31 is
     delta D_31
     range -1.0 .. 1.0 - D_31;

   type TQ7_24 is
     delta  D_24
     range -2.0 ** 7 ..
            2.0 ** 7   - D_24;

end Custom_Fixed_Point;