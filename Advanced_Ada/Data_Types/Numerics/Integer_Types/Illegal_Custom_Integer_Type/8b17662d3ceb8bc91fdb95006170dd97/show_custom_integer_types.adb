with Ada.Text_IO; use Ada.Text_IO;

with Custom_Integer_Types;
use Custom_Integer_Types;

procedure Show_Custom_Integer_Types is
begin
   Put_Line ("Int_1024_Bits'Size  :"
             & Int_1024_Bits'Size'Image
             & " bits");
   Put_Line ("Int_1024_Bits'First :"
             & Int_1024_Bits'First'Image);
   Put_Line ("Int_1024_Bits'Last  :"
             & Int_1024_Bits'Last'Image);
end Show_Custom_Integer_Types;