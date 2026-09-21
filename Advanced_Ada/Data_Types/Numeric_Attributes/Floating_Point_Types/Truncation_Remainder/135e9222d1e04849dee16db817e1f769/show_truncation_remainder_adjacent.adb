with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Truncation_Remainder_Adjacent is
begin
   Put_Line
     ("Float'Truncation (1.55):  "
      & Float'Truncation (1.55)'Image);
   Put_Line
     ("Float'Truncation (-1.55): "
      & Float'Truncation (-1.55)'Image);
   Put_Line
     ("Float'Remainder (1.25, 0.25): "
      & Float'Remainder (1.25, 0.25)'Image);
   Put_Line
     ("Float'Remainder (1.25, 0.5):  "
      & Float'Remainder (1.25, 0.5)'Image);
   Put_Line
     ("Float'Remainder (1.25, 1.0):  "
      & Float'Remainder (1.25, 1.0)'Image);
   Put_Line
     ("Float'Remainder (1.25, 2.0):  "
      & Float'Remainder (1.25, 2.0)'Image);
   Put_Line
     ("Float'Adjacent (1.0e-83, 0.0): "
      & Float'Adjacent (1.0e-83, 0.0)'Image);
   Put_Line
     ("Float'Adjacent (1.0e-83, 1.0): "
      & Float'Adjacent (1.0e-83, 1.0)'Image);
end Show_Truncation_Remainder_Adjacent;