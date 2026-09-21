with Increment;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   B : Integer;
begin
   Increment (B);
   Put_Line (B'Image);
end Main;