with Ada.Text_IO;  use Ada.Text_IO;

with Custom_Types; use Custom_Types;

procedure Show_Sizes is
begin
   Put_Line ("Size of My_Int: "
             & My_Int'Size'Image
             & " bits");
end Show_Sizes;