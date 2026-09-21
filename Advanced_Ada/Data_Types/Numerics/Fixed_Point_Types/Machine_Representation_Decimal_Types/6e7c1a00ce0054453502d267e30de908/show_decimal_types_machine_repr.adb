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
   Put_Line ("=============================");
   Put_Line ("T2_D6 <-- T0_D4");
   Put_Line ("=============================");

   Put_Line ("-----------------------------");
   Put_Line ("----- T0_D4 (152.0)");
   Put_Line ("-----------------------------");

   V_T0_D4 := 152.0;
   V_T2_D6 := T2_D6 (V_T0_D4);

   Show_Info (V_T0_D4, "V_T0_D4 ");
   Show_Info (V_T2_D6, "V_T2_D6 ");

   Put_Line ("-----------------------------");
   Put_Line ("----- T0_D4 (1.0)");
   Put_Line ("-----------------------------");
   V_T0_D4 := 1.0;
   V_T2_D6 := T2_D6 (V_T0_D4);

   Show_Info (V_T0_D4, "V_T0_D4 ");
   Show_Info (V_T2_D6, "V_T2_D6 ");

   Put_Line ("=============================");
   Put_Line ("T0_D4 <-- T2_D6");
   Put_Line ("=============================");

   Put_Line ("-----------------------------");
   Put_Line ("----- T2_D6 (225.0)");
   Put_Line ("-----------------------------");
   V_T2_D6 := 225.0;
   V_T0_D4 := T0_D4 (V_T2_D6);

   Show_Info (V_T2_D6, "V_T2_D6 ");
   Show_Info (V_T0_D4, "V_T0_D4 ");

   Put_Line ("-----------------------------");
   Put_Line ("----- T2_D6 (1.55)");
   Put_Line ("-----------------------------");
   V_T2_D6 := 1.55;
   V_T0_D4 := T0_D4 (V_T2_D6);

   Show_Info (V_T2_D6, "V_T2_D6 ");
   Show_Info (V_T0_D4, "V_T0_D4 ");

   Put_Line ("=============================");
   Put_Line ("T2_D12 <-- T2_D6");
   Put_Line ("=============================");

   Put_Line ("-----------------------------");
   Put_Line ("----- T2_D6 (225.0)");
   Put_Line ("-----------------------------");
   V_T2_D6  := 225.0;
   V_T2_D12 := T2_D12 (V_T2_D6);

   Show_Info (V_T2_D6,  "V_T2_D6 ");
   Show_Info (V_T2_D12, "V_T2_D12 ");
end Show_Decimal_Types_Machine_Repr;