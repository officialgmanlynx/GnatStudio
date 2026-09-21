package Illegal_Decimal_Types is

   type T0_D4 is
     delta 10.0 ** (-0) digits 4
       range -10_000.0 .. 10_000.0;
       --    ^^^^^^^^^^^^^^^^^^^^^
       --  ERROR: outside the maximum range
       --         9_999.0 .. 9_999.0

end Illegal_Decimal_Types;