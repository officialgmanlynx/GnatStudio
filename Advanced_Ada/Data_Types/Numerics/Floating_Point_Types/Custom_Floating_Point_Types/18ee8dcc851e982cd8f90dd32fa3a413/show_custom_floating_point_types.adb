with Ada.Text_IO; use Ada.Text_IO;

with Custom_Floating_Point_Types;
use Custom_Floating_Point_Types;

procedure Show_Custom_Floating_Point_Types is
begin
   Put_Line ("Coefficient'Digits :"
             & Coefficient'Digits'Image
             & " digits");
   Put_Line ("Coefficient'Size   :"
             & Coefficient'Size'Image
             & " bits");
end Show_Custom_Floating_Point_Types;