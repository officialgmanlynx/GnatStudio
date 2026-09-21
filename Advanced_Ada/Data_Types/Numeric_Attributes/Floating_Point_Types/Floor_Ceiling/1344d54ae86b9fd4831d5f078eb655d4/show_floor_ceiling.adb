with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Floor_Ceiling is
begin
   Put_Line ("Float'Floor (0.25):   "
             & Float'Floor (0.25)'Image);
   Put_Line ("Float'Ceiling (0.25): "
             & Float'Ceiling (0.25)'Image);
end Show_Floor_Ceiling;