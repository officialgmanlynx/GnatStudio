with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   A : Integer := 10;
begin
   Put_Line (Integer'Image (A));
   A := Integer'Value ("99");
   Put_Line (Integer'Image (A));
end Main;