package Custom_Fixed_Point is

   D : constant := 2.0 ** (-15);
   type Short_Fixed is
     delta D
     range -1.0 .. 1.0 - D;

   subtype Coefficient is Short_Fixed
     range 0.0 .. 1.0 - D;

end Custom_Fixed_Point;