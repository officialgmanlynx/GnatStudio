with Ada.Text_IO; use Ada.Text_IO;
with System;

procedure Show_System_Int_Range is
begin
   Put_Line ("System.Min_Int :"
             & System.Min_Int'Image);
   Put_Line ("System.Max_Int :"
             & System.Max_Int'Image);
end Show_System_Int_Range;