package Custom_Fixed_Point is

   D15 : constant := 2.0 ** (-15);
   D7  : constant := 2.0 ** (-7);

   type TQ15 is
     delta D15
     range -1.0 .. 1.0 - D15;

   type TQ15_New is new
     TQ15
     delta D7;

end Custom_Fixed_Point;