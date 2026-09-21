package Custom_Decimal_Types is

   type Short_Decimal is
     delta 10.0 ** (-0) digits 4;
    --  range -9_999.0 .. 9_999.0;

   type Decimal is
     delta 10.0 ** (-2) digits 6;
    --  range -9_999.99 .. 9_999.99;

end Custom_Decimal_Types;