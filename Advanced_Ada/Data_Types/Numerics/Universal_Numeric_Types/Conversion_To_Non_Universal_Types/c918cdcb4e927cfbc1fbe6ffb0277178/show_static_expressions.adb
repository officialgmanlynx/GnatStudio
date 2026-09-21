with Ada.Text_IO; use Ada.Text_IO;

with Static_Expressions;
use  Static_Expressions;

procedure Show_Static_Expressions is
   Two_Pi : constant Float := 2.0 * Pi;
   --  Same as:
   --  Two_Pi: constant Float :=
   --            2.0 * Float (Pi);

   Two_Pi_More_Precise :
     constant Long_Long_Float := 2.0 * Pi;
   --  Same as:
   --  Two_Pi_More_Precise :
   --    constant Long_Long_Float :=
   --      2.0 * Long_Long_Float (Pi);
begin
   Put_Line (Two_Pi'Image);
   Put_Line (Two_Pi_More_Precise'Image);
end Show_Static_Expressions;