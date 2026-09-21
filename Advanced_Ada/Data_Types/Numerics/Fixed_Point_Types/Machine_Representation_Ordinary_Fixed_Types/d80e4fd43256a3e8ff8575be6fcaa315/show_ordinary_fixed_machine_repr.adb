with Ada.Text_IO;   use Ada.Text_IO;

with Angles;        use  Angles;

with Angles.Show_Info_Procs;
use  Angles.Show_Info_Procs;

procedure Show_Ordinary_Fixed_Machine_Repr is
begin
   Put_Line ("=============================");
   Put_Line ("Angle");
   Put_Line ("=============================");

   Show_Info (Angle'First,  "Angle'First ");
   Show_Info (Angle'(0.25), "0.25        ");
   Show_Info (Angle'(0.50), "0.50        ");
   Show_Info (Angle'(0.75), "0.75        ");
   Show_Info (Angle'(0.80), "0.80        ");
   Show_Info (Angle'Last,   "Angle'Last  ");

   Put_Line ("=============================");
   Put_Line ("Angle_Adj");
   Put_Line ("=============================");

   Show_Info (Angle_Adj'First,
              "Angle_Adj'First ");
   Show_Info (Angle_Adj'(0.25),
              "0.25            ");
   Show_Info (Angle_Adj'(0.50),
              "0.50            ");
   Show_Info (Angle_Adj'(0.75),
              "0.75            ");
   Show_Info (Angle_Adj'(0.80),
              "0.80            ");
   Show_Info (Angle_Adj'Last,
              "Angle_Adj'Last  ");

end Show_Ordinary_Fixed_Machine_Repr;