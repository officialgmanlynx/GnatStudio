with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Boolean_Attributes is
begin
   Put_Line
     ("Float'Denorm:           "
      & Float'Denorm'Image);
   Put_Line
     ("Long_Float'Denorm:      "
      & Long_Float'Denorm'Image);
   Put_Line
     ("Long_Long_Float'Denorm: "
      & Long_Long_Float'Denorm'Image);
   Put_Line
     ("Float'Signed_Zeros:           "
      & Float'Signed_Zeros'Image);
   Put_Line
     ("Long_Float'Signed_Zeros:      "
      & Long_Float'Signed_Zeros'Image);
   Put_Line
     ("Long_Long_Float'Signed_Zeros: "
      & Long_Long_Float'Signed_Zeros'Image);
   Put_Line
     ("Float'Machine_Rounds:           "
      & Float'Machine_Rounds'Image);
   Put_Line
     ("Long_Float'Machine_Rounds:      "
      & Long_Float'Machine_Rounds'Image);
   Put_Line
     ("Long_Long_Float'Machine_Rounds: "
      & Long_Long_Float'Machine_Rounds'Image);
   Put_Line
     ("Float'Machine_Overflows:           "
      & Float'Machine_Overflows'Image);
   Put_Line
     ("Long_Float'Machine_Overflows:      "
      & Long_Float'Machine_Overflows'Image);
   Put_Line
     ("Long_Long_Float'Machine_Overflows: "
      & Long_Long_Float'Machine_Overflows'Image);
end Show_Boolean_Attributes;