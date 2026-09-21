with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Decimal_Round is
   type T3_D3 is delta 10.0 ** (-3) digits 3;
begin
   Put_Line ("T3_D3'Round (0.2774): "
             & T3_D3'Round (0.2774)'Image);
   Put_Line ("T3_D3'Round (0.2777): "
             & T3_D3'Round (0.2777)'Image);
end Show_Decimal_Round;