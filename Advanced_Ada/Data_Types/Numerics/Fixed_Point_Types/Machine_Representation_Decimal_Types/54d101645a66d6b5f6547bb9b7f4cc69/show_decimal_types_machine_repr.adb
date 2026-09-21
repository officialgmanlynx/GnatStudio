with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

with Custom_Decimal_Types.Show_Info_Procs;
use  Custom_Decimal_Types.Show_Info_Procs;

procedure Show_Decimal_Types_Machine_Repr is
   V_T0_D4   : T0_D4;
   V_T2_D6   : T2_D6;
   V_T2_D12  : T2_D12;
begin
   Put_Line ("-----------------------------");
   Put_Line ("---- 152.0");
   Put_Line ("-----------------------------");

   V_T0_D4  := 152.0;
   V_T2_D6  := 152.0;
   V_T2_D12 := 152.0;

   Show_Info (V_T0_D4,  "V_T0_D4  ");
   Show_Info (V_T2_D6,  "V_T2_D6  ");
   Show_Info (V_T2_D12, "V_T2_D12 ");

   Put_Line ("-----------------------------");
   Put_Line ("---- V := V * 2");
   Put_Line ("-----------------------------");

   V_T0_D4  := V_T0_D4  * 2;
   V_T2_D6  := V_T2_D6  * 2;
   V_T2_D12 := V_T2_D12 * 2;

   Show_Info (V_T0_D4,  "V_T0_D4  ");
   Show_Info (V_T2_D6,  "V_T2_D6  ");
   Show_Info (V_T2_D12, "V_T2_D12 ");
end Show_Decimal_Types_Machine_Repr;