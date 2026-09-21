package Custom_Decimal_Types is

   type Decimal is
     delta 10.0 ** (-2) digits 6;

   type Small_Money is new
     Decimal;

end Custom_Decimal_Types;