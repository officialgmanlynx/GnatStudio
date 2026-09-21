package Custom_Types is
   D_48 : constant := 2.0 ** (-48);

   type TQ15_48 is
     delta  D_48
     range -2.0 ** 15 ..
            2.0 ** 15 - D_48;

   type T2_D6 is
     delta 10.0 ** (-2) digits 6;
   --  Decimal type

   type TD18 is
     digits 18;
   --  Floating-point type

   type Int15 is
     range -2 ** 15 ..
            2 ** 15;
   --  Integer type

end Custom_Types;