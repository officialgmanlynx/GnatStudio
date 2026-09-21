with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Model_Mantissa_Emin is
begin
   Put_Line
     ("Float'Model_Mantissa:           "
      & Float'Model_Mantissa'Image);
   Put_Line
     ("Long_Float'Model_Mantissa:      "
      & Long_Float'Model_Mantissa'Image);
   Put_Line
     ("Long_Long_Float'Model_Mantissa: "
      & Long_Long_Float'Model_Mantissa'Image);
   Put_Line
     ("Float'Model_Emin:               "
      & Float'Model_Emin'Image);
   Put_Line
     ("Long_Float'Model_Emin:          "
      & Long_Float'Model_Emin'Image);
   Put_Line
     ("Long_Long_Float'Model_Emin:     "
      & Long_Long_Float'Model_Emin'Image);
end Show_Model_Mantissa_Emin;