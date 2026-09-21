with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Reduction_Expression is
   I : Integer;
begin
   I := [for I in 1 .. 3 =>
           I + 1]'Reduce ("+", 0);
   Put_Line ("I = "
             & I'Image);

   I := [for I in 1 .. 3 =>
           I + 1]'Reduce ("*", 1);
   Put_Line ("I = "
             & I'Image);
end Show_Reduction_Expression;