with Ada.Text_IO; use Ada.Text_IO;

with Constant_Properties;
use  Constant_Properties;

procedure Show_Constant_Property is
   R : Rec (10);
begin
   Put_Line ("R.C = "
             & R.C'Image);

   R.C := R.C + 1;
   --  ERROR: cannot change
   --         record discriminant
end Show_Constant_Property;