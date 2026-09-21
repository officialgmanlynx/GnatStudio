package Custom_Fixed_Point is
   D_15 : constant := 2.0 ** (-15);
   D_31 : constant := 2.0 ** (-31);

   type TQ15 is
     delta D_15
     range -1.0 .. 1.0 - D_15;

   type TQ31 is
     delta D_31
     range -1.0 .. 1.0 - D_31;

   type Int_TQ15 is
     range -2 ** (TQ15'Size - 1) ..
            2 ** (TQ15'Size - 1) - 1;

   type Int_TQ31 is
     range -2 ** (TQ31'Size - 1) ..
            2 ** (TQ31'Size - 1) - 1;

end Custom_Fixed_Point;