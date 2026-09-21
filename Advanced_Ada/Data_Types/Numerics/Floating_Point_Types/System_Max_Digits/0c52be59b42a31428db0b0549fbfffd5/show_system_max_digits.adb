with Ada.Text_IO; use Ada.Text_IO;
with System;

procedure Show_System_Max_Digits is
begin
   Put_Line ("System.Max_Digits      :"
             & System.Max_Digits'Image
             & " digits");
   Put_Line ("System.Max_Base_Digits :"
             & System.Max_Base_Digits'Image
             & " digits");
end Show_System_Max_Digits;