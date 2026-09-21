with Ada.Text_IO;   use Ada.Text_IO;

with Angles;        use  Angles;

with Angles.Show_Info_Procs;
use  Angles.Show_Info_Procs;

procedure Show_Ordinary_Fixed_Machine_Repr
is
   V_Angle     : Angle;
   V_Angle_Adj : Angle_Adj;
begin
   Put_Line ("=============================");
   Put_Line ("Angle_Adj <-- Angle");
   Put_Line ("=============================");

   Put_Line ("-----------------------------");
   Put_Line ("----- Angle (90.0)");
   Put_Line ("-----------------------------");
   V_Angle     := 90.0;
   V_Angle_Adj := Angle_Adj (V_Angle);

   Show_Info (V_Angle,     "V_Angle     ");
   Show_Info (V_Angle_Adj, "V_Angle_Adj ");

   Put_Line ("-----------------------------");
   Put_Line ("----- Angle (0.5)");
   Put_Line ("-----------------------------");
   V_Angle     := 0.5;
   V_Angle_Adj := Angle_Adj (V_Angle);

   Show_Info (V_Angle,     "V_Angle     ");
   Show_Info (V_Angle_Adj, "V_Angle_Adj ");

   Put_Line ("=============================");
   Put_Line ("Angle <-- Angle_Adj");
   Put_Line ("=============================");

   Put_Line ("-----------------------------");
   Put_Line ("----- Angle_Adj (95.0)");
   Put_Line ("-----------------------------");
   V_Angle_Adj := 95.0;
   V_Angle     := Angle (V_Angle_Adj);

   Show_Info (V_Angle_Adj, "V_Angle_Adj ");
   Show_Info (V_Angle,     "V_Angle     ");

   Put_Line ("-----------------------------");
   Put_Line ("----- Angle_Adj (0.5)");
   Put_Line ("-----------------------------");
   V_Angle_Adj := 0.5;
   V_Angle     := Angle (V_Angle_Adj);

   Show_Info (V_Angle_Adj, "V_Angle_Adj ");
   Show_Info (V_Angle,     "V_Angle     ");
end Show_Ordinary_Fixed_Machine_Repr;