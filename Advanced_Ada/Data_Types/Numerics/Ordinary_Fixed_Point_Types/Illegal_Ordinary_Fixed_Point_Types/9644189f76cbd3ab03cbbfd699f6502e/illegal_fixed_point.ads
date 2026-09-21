package Illegal_Fixed_Point is

   D : constant := 2.0 ** (-128);

   type TQ128 is
     delta D
     range -1.0 .. 1.0 - D;

end Illegal_Fixed_Point;