with Ada.Text_IO; use Ada.Text_IO;

with Custom_Integer_Types;
use Custom_Integer_Types;

procedure Show_Custom_Integer_Types is
begin
   Put_Line ("Coefficient'Size  :"
             & Coefficient'Size'Image
             & " bits");
   Put_Line ("Coefficient'First :"
             & Coefficient'First'Image);
   Put_Line ("Coefficient'Last  :"
             & Coefficient'Last'Image);
end Show_Custom_Integer_Types;