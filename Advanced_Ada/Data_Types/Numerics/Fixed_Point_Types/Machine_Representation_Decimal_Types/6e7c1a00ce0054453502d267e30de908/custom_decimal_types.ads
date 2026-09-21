package Custom_Decimal_Types is

   type T0_D4 is
     delta 10.0 ** (-0) digits 4;
   type T2_D6 is
     delta 10.0 ** (-2) digits 6;
   type T2_D12 is
     delta 10.0 ** (-2) digits 12;

   type Int_T0_D4 is
     range -2 ** (T0_D4'Size - 1) ..
            2 ** (T0_D4'Size - 1) - 1
     with Size => T0_D4'Size;
   type Int_T2_D6 is
     range -2 ** (T2_D6'Size - 1) ..
            2 ** (T2_D6'Size - 1) - 1
     with Size => T2_D6'Size;
   type Int_T2_D12 is
     range -2 ** (T2_D12'Size - 1) ..
            2 ** (T2_D12'Size - 1) - 1
     with Size => T2_D12'Size;

end Custom_Decimal_Types;