with Ada.Text_IO; use Ada.Text_IO;

with Custom_Floating_Point_Types;
use Custom_Floating_Point_Types;

procedure Show_Floating_Point_Subtypes is
   C  : Coefficient;
   FC : Filter_Coefficient;
begin
   C  := 0.532344123;
   Put_Line ("C  = "
             & C'Image);

   FC := C;
   Put_Line ("FC = "
             & FC'Image);
end Show_Floating_Point_Subtypes;