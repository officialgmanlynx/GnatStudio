package Custom_Decimal_Types is

   type Decimal is
     delta 10.0 ** (-2) digits 6;

   subtype Small_Money is Decimal;

end Custom_Decimal_Types;