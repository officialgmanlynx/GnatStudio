with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Machine_Radix is
begin
   Put_Line
     ("Float'Machine_Radix:           "
      & Float'Machine_Radix'Image);
   Put_Line
     ("Long_Float'Machine_Radix:      "
      & Long_Float'Machine_Radix'Image);
   Put_Line
     ("Long_Long_Float'Machine_Radix: "
      & Long_Long_Float'Machine_Radix'Image);
end Show_Machine_Radix;