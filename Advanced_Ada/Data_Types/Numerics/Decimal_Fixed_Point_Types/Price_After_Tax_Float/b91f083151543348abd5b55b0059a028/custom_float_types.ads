package Custom_Float_Types is

   type Price is
     digits 16;

   type Price_Array is
     array (Positive range <>) of
       Price;

   type Rate is
     digits 18;

end Custom_Float_Types;