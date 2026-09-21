with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Roundings is
begin
   Put_Line
     ("Float'Rounding (0.5):  "
      & Float'Rounding (0.5)'Image);
   Put_Line
     ("Float'Rounding (1.5):  "
      & Float'Rounding (1.5)'Image);
   Put_Line
     ("Float'Rounding (4.5):  "
      & Float'Rounding (4.5)'Image);
   Put_Line
     ("Float'Rounding (-4.5): "
      & Float'Rounding (-4.5)'Image);
   Put_Line
     ("Float'Unbiased_Rounding (0.5): "
      & Float'Unbiased_Rounding (0.5)'Image);
   Put_Line
     ("Float'Unbiased_Rounding (1.5): "
      & Float'Unbiased_Rounding (1.5)'Image);
   Put_Line
     ("Float'Machine_Rounding (0.5): "
      & Float'Machine_Rounding (0.5)'Image);
   Put_Line
     ("Float'Machine_Rounding (1.5): "
      & Float'Machine_Rounding (1.5)'Image);
end Show_Roundings;