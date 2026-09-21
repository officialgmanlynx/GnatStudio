with Ada.Text_IO; use Ada.Text_IO;

procedure Simple_Integer_Literal is
   V : Integer;
begin
   V := 10;

   Put_Line (Integer'Image (V));
end Simple_Integer_Literal;