with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Model_Epsilon_Small is
begin
   Put_Line
     ("Float'Model_Epsilon:           "
      & Float'Model_Epsilon'Image);
   Put_Line
     ("Long_Float'Model_Epsilon:      "
      & Long_Float'Model_Epsilon'Image);
   Put_Line
     ("Long_Long_Float'Model_Epsilon: "
      & Long_Long_Float'Model_Epsilon'Image);
   Put_Line
     ("Float'Model_Small:           "
      & Float'Model_Small'Image);
   Put_Line
     ("Long_Float'Model_Small:      "
      & Long_Float'Model_Small'Image);
   Put_Line
     ("Long_Long_Float'Model_Small: "
      & Long_Long_Float'Model_Small'Image);
end Show_Model_Epsilon_Small;