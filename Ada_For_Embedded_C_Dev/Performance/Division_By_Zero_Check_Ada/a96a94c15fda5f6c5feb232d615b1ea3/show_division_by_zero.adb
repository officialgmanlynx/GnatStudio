with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Division_By_Zero is
   A   : Integer := 8;
   B   : Integer := 0;
   Res : Integer;
begin
   Res := A / B;

   Put_Line ("Res = " & Integer'Image (Res));
exception
   when Constraint_Error =>
      Put_Line ("Error: cannot calculate value (division by zero)");
   when others =>
      null;
end Show_Division_By_Zero;