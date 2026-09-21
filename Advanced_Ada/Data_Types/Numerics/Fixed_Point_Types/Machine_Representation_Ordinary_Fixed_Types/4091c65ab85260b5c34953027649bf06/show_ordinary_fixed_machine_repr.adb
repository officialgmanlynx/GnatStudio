with Ada.Text_IO;   use Ada.Text_IO;

with Angles;        use  Angles;

with Angles.Show_Info_Procs;
use  Angles.Show_Info_Procs;

procedure Show_Ordinary_Fixed_Machine_Repr
is
   V_Angle     : Angle;
   V_Angle_Adj : Angle_Adj;
begin
   Put_Line ("-----------------------------");
   Put_Line ("---- 90.0");
   Put_Line ("-----------------------------");

   V_Angle     := 90.0;
   V_Angle_Adj := 90.0;

   Show_Info (V_Angle,     "V_Angle     ");
   Show_Info (V_Angle_Adj, "V_Angle_Adj ");

   Put_Line ("-----------------------------");
   Put_Line ("---- V := V * 2");
   Put_Line ("-----------------------------");
   V_Angle     := V_Angle     * 2;
   V_Angle_Adj := V_Angle_Adj * 2;

   Show_Info (V_Angle,     "V_Angle     ");
   Show_Info (V_Angle_Adj, "V_Angle_Adj ");
end Show_Ordinary_Fixed_Machine_Repr;