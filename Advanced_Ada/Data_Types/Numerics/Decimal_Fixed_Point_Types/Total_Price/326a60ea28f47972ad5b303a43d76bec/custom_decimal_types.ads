package Custom_Decimal_Types is

   type Price is
     delta 0.01 digits 16;

   type Price_Array is
     array (Positive range <>) of
       Price;

   type Price_Accum is
      delta 0.0001 digits 18;

   type Rate is
     delta 0.0001 digits 18;

end Custom_Decimal_Types;