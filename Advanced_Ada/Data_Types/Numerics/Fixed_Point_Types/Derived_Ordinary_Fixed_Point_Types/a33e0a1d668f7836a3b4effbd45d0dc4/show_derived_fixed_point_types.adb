with Ada.Text_IO; use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Derived_Fixed_Point_Types is
   SF : Short_Fixed;
   C  : Coefficient;
begin
   SF  := 0.25;
   Put_Line ("SF = "
             & SF'Image);

   C := Coefficient (SF);
   Put_Line ("C  = "
             & C'Image);
end Show_Derived_Fixed_Point_Types;