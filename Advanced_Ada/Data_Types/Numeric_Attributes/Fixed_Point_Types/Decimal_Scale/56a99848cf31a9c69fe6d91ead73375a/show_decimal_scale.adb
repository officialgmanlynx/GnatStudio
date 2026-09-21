with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Decimal_Scale is
   type TM3_D6 is delta 10.0 **   3  digits 6;
   type T3_D6  is delta 10.0 ** (-3) digits 6;
   type T9_D12 is delta 10.0 ** (-9) digits 12;
begin
   Put_Line ("TM3_D6'Scale: "
             & TM3_D6'Scale'Image);
   Put_Line ("T3_D6'Scale: "
             & T3_D6'Scale'Image);
   Put_Line ("T9_D12'Scale: "
             & T9_D12'Scale'Image);
end Show_Decimal_Scale;