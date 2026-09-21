with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Copy_Sign_Leading_Part_Machine is
begin
   Put_Line
     ("Float'Copy_Sign (1.0, -10.0): "
      & Float'Copy_Sign (1.0, -10.0)'Image);
   Put_Line
     ("Float'Copy_Sign (-1.0, -10.0): "
      & Float'Copy_Sign (-1.0, -10.0)'Image);
   Put_Line
     ("Float'Copy_Sign (1.0,  10.0): "
      & Float'Copy_Sign (1.0,  10.0)'Image);
   Put_Line
     ("Float'Copy_Sign (1.0, -0.0):  "
      & Float'Copy_Sign (1.0, -0.0)'Image);
   Put_Line
     ("Float'Copy_Sign (1.0,  0.0):  "
      & Float'Copy_Sign (1.0,  0.0)'Image);
   Put_Line
     ("Float'Leading_Part (1.75, 1): "
      & Float'Leading_Part (1.75, 1)'Image);
   Put_Line
     ("Float'Leading_Part (1.75, 2): "
      & Float'Leading_Part (1.75, 2)'Image);
   Put_Line
     ("Float'Leading_Part (1.75, 3): "
      & Float'Leading_Part (1.75, 3)'Image);
end Show_Copy_Sign_Leading_Part_Machine;