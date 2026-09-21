with Ada.Text_IO; use Ada.Text_IO;

with Modular_Types;
use  Modular_Types;

procedure Show_Not_Power_Of_Two_Modular is
begin
   Put_Line ("Modular_10'Size  :"
             & Modular_10'Size'Image
             & " bits");
   Put_Line ("Modular_10'First :"
             & Modular_10'First'Image);
   Put_Line ("Modular_10'Last  :"
             & Modular_10'Last'Image);
end Show_Not_Power_Of_Two_Modular;