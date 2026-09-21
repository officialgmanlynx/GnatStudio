package Currencies is

   type EUR is
     delta 0.01 digits 12;

   type Yen is
     delta 1.0 digits 12;

   --  Exchange rates as of
   --  2025-12-26:
   EUR_Per_Yen : constant := 184.365_5;
   Yen_Per_EUR : constant := 0.005_42;

   function To_EUR (Y : Yen)
                   return EUR is
     (Y * Yen_Per_EUR);

   function To_Yen (E : EUR)
                   return Yen is
     (E * EUR_Per_Yen);

end Currencies;