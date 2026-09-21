with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

with Custom_Decimal_Types.Show_Info_Procs;
use  Custom_Decimal_Types.Show_Info_Procs;

procedure Show_Decimal_Types_Machine_Repr is
begin
   Put_Line ("=============================");
   Put_Line ("T0_D4");
   Put_Line ("=============================");

   Show_Info (T0_D4'(1.0), "1.0     ");
   Show_Info (T0_D4 (T2_D6'(1.55)),
              "1.55    ");
   Show_Info (T0_D4'(2.0), "2.0     ");

   Put_Line ("=============================");
   Put_Line ("T2_D6");
   Put_Line ("=============================");

   Show_Info (T2_D6'(1.0),  "1.0     ");
   Show_Info (T2_D6'(1.55), "1.55    ");
   Show_Info (T2_D6'(2.0),  "2.0     ");
end Show_Decimal_Types_Machine_Repr;