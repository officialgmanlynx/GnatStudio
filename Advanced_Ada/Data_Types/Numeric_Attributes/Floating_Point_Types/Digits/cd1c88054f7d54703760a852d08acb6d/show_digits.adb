with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Digits is
begin
   Put_Line ("Float'Digits:           "
             & Float'Digits'Image);
   Put_Line ("Long_Float'Digits:      "
             & Long_Float'Digits'Image);
   Put_Line ("Long_Long_Float'Digits: "
             & Long_Long_Float'Digits'Image);
end Show_Digits;