with Ada.Text_IO; use Ada.Text_IO;

with Derived_With_Discriminants;
use  Derived_With_Discriminants;

procedure Show_Derived_With_Discriminants is
   A : T (L => -1, M => -2);
   B : T_Derived_2 (X => 0, Y => 1);
begin
   Put_Line ("A.L = "
             & A.L'Image);
   Put_Line ("A.M = "
             & A.M'Image);
   Put_Line ("B.X = "
             & B.X'Image);
   Put_Line ("B.Y = "
             & B.Y'Image);
end Show_Derived_With_Discriminants;