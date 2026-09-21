with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Price_After_Tax is

   Prices        : Price_Array :=
                     (8.40, 5.03, 1.67);
   P_After_Tax : Price;
   Tax_Rate      : Rate;

   procedure Show_Prices (Before,
                          After : Price) is
   begin
      Put_Line (Before'Image
                & " => "
                & After'Image);
   end Show_Prices;
begin
   Tax_Rate := 1.19;

   Put_Line ("Price BEFORE => AFTER Tax");
   for P of Prices loop
      P_After_Tax := P * Tax_Rate;
      Show_Prices (P, P_After_Tax);
   end loop;

end Price_After_Tax;