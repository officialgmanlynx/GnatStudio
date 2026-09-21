with System;
with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Max_Binary_Nonbinary_Modulus is
   type Modular_Max is
     mod System.Max_Binary_Modulus;
begin
   Put_Line
     ("System.Max_Binary_Modulus - 1 :"
      & Modular_Max'Last'Image);
   Put_Line
     ("System.Max_Nonbinary_Modulus  :"
      & System.Max_Nonbinary_Modulus'Image);
end Show_Max_Binary_Nonbinary_Modulus;