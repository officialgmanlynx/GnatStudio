with Ada.Text_IO; use Ada.Text_IO;
with Proc;

procedure Main is
   V1, V2 : Integer;
begin
   V2 := 2;
   Proc (5, V1, V2);

   Put_Line ("V1: " & Integer'Image (V1));
   Put_Line ("V2: " & Integer'Image (V2));
end Main;