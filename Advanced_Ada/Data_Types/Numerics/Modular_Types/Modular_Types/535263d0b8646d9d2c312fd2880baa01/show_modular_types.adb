with Ada.Text_IO; use Ada.Text_IO;

with Modular_Types;
use  Modular_Types;

procedure Show_Modular_Types is
begin
   Put_Line ("Modular'Size  :"
             & Modular'Size'Image
             & " bits");
   Put_Line ("Modular'First :"
             & Modular'First'Image);
   Put_Line ("Modular'Last  :"
             & Modular'Last'Image);
end Show_Modular_Types;