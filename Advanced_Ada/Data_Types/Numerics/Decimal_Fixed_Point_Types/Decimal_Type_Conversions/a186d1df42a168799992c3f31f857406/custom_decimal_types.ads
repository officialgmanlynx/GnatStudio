package Custom_Decimal_Types is

   type T4_D8 is
     delta 10.0 ** (-4) digits 8;

   type T2_D6 is
     delta 10.0 ** (-2) digits 6;

   type T0_D4 is
     delta 10.0 ** (0) digits 4;

end Custom_Decimal_Types;