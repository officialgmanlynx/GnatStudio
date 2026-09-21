package Custom_Decimal_Types is

   type T2_D6 is
     delta 10.0 ** (-2) digits 6;

   type Small_Money is new
     T2_D6;

   type Smaller_Money is new
     T2_D6 digits 2;

end Custom_Decimal_Types;