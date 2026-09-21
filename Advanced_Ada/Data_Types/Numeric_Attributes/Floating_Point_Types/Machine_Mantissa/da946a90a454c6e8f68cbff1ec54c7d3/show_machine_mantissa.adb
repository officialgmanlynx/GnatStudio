with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Machine_Mantissa is
begin
   Put_Line
     ("Float'Machine_Mantissa:           "
      & Float'Machine_Mantissa'Image);
   Put_Line
     ("Long_Float'Machine_Mantissa:      "
      & Long_Float'Machine_Mantissa'Image);
   Put_Line
     ("Long_Long_Float'Machine_Mantissa: "
      & Long_Long_Float'Machine_Mantissa'Image);
end Show_Machine_Mantissa;