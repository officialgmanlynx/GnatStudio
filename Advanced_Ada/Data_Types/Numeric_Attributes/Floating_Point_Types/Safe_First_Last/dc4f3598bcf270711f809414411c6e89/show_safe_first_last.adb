with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Safe_First_Last is
begin
   Put_Line ("Float'First:                "
             & Float'First'Image);
   Put_Line ("Float'Last:                 "
             & Float'Last'Image);
   Put_Line ("Float'Safe_First:           "
             & Float'Safe_First'Image);
   Put_Line ("Float'Safe_Last:            "
             & Float'Safe_Last'Image);
   Put_Line ("Long_Float'First:           "
             & Long_Float'First'Image);
   Put_Line ("Long_Float'Last:            "
             & Long_Float'Last'Image);
   Put_Line ("Long_Float'Safe_First:      "
             & Long_Float'Safe_First'Image);
   Put_Line ("Long_Float'Safe_Last:       "
             & Long_Float'Safe_Last'Image);
   Put_Line ("Long_Long_Float'First:      "
             & Long_Long_Float'First'Image);
   Put_Line ("Long_Long_Float'Last:       "
             & Long_Long_Float'Last'Image);
   Put_Line ("Long_Long_Float'Safe_First: "
             & Long_Long_Float'Safe_First'Image);
   Put_Line ("Long_Long_Float'Safe_Last:  "
             & Long_Long_Float'Safe_Last'Image);
end Show_Safe_First_Last;