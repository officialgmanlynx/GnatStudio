package Custom_Fixed_Point is

   D : constant := 2.0 ** (-15);

   type TQ15 is
     delta D
     range -1.0 .. 1.0 - D;

   type TQ15_Derived is new TQ15;

end Custom_Fixed_Point;