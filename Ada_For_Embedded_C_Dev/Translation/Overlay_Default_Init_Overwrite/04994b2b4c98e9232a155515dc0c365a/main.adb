with Ada.Text_IO; use Ada.Text_IO;

with P; use P;

procedure Main is
   V : Integer := 10;
begin
   Put_Line ("V = " & Integer'Image (V));
   Display_Bytes_Increment (V);
   Put_Line ("V = " & Integer'Image (V));
end Main;