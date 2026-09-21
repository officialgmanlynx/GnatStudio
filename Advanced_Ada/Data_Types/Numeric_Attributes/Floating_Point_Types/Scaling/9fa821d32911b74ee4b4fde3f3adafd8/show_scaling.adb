with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Scaling is
begin
   Put_Line ("Float'Scaling (0.25, 1): "
             & Float'Scaling (0.25, 1)'Image);
   Put_Line ("Float'Scaling (0.25, 2): "
             & Float'Scaling (0.25, 2)'Image);
   Put_Line ("Float'Scaling (0.25, 3): "
             & Float'Scaling (0.25, 3)'Image);
end Show_Scaling;