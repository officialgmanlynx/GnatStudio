with Ada.Text_IO; use Ada.Text_IO;
with Currencies;  use Currencies;

procedure Show_Currency_Conversion is
   E : EUR;
   Y : Yen;
begin
   Y := 1000.0;
   Put_Line (Y'Image
             & " JPY = "
             & To_EUR (Y)'Image
             & " EUR");

   E := 10.0;
   Put_Line (E'Image
             & " EUR = "
             & To_Yen (E)'Image
             & " JPY");
end Show_Currency_Conversion;