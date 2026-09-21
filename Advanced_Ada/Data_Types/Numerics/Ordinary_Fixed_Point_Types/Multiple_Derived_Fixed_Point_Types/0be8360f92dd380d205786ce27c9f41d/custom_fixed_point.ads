package Custom_Fixed_Point is

   D : constant := 2.0 ** (-15);
   type TQ15 is
     delta D
     range -1.0 .. 1.0 - D;

   type TQ15_Half is new
     TQ15 range -0.5 .. 0.5 - D;

   type TQ15_Quarter is new
     TQ15 range -0.25 .. 0.25 - D;

end Custom_Fixed_Point;