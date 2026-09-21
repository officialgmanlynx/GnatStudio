with Ada.Text_IO; use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Fixed_Point_Subtypes is
   SF : Short_Fixed;
   C  : Coefficient;
begin
   SF := 0.25;
   Put_Line ("SF = "
             & SF'Image);

   C := SF;
   Put_Line ("C  = "
             & C'Image);
   Put_Line ("---------");

   SF := -0.25;
   Put_Line
     ("SF in Short_Fixed: "
      & Boolean'Image
          (SF in Short_Fixed));
   Put_Line
     ("SF in Coefficient: "
      & Boolean'Image
          (SF in Coefficient));
end Show_Fixed_Point_Subtypes;