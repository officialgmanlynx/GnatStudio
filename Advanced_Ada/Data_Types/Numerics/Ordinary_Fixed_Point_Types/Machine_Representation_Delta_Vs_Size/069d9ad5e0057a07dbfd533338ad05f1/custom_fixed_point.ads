package Custom_Fixed_Point is
   D_24 : constant := 2.0 ** (-24);
   D_31 : constant := 2.0 ** (-31);

   type TQ31 is
     delta D_31
     range -1.0 .. 1.0 - D_31;

   type TQ7_24 is
     delta  D_24
     range -2.0 ** 7 ..
            2.0 ** 7 - D_24;

   type Int_TQ31 is
     range -2 ** (TQ31'Size - 1) ..
            2 ** (TQ31'Size - 1) - 1;

   type Int_TQ7_24 is
     range -2 ** (TQ7_24'Size - 1) ..
            2 ** (TQ7_24'Size - 1) - 1;

end Custom_Fixed_Point;