with Ada.Text_IO; use Ada.Text_IO;

with Custom_Integer_Types;
use  Custom_Integer_Types;

procedure Show_Custom_Integer_Types is
begin
   Put_Line ("Custom_Int'Size  :"
             & Custom_Int'Size'Image
             & " bits");
   Put_Line ("Custom_Int'First :"
             & Custom_Int'First'Image);
   Put_Line ("Custom_Int'Last  :"
             & Custom_Int'Last'Image);

   Put_Line ("Custom_Int'Base'Size  :"
             & Custom_Int'Base'Size'Image);
   Put_Line ("Custom_Int'Base'First :"
             & Custom_Int'Base'First'Image);
   Put_Line ("Custom_Int'Base'Last  :"
             & Custom_Int'Base'Last'Image);
end Show_Custom_Integer_Types;