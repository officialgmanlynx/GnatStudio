with Mid;
with Ada.Text_IO; use Ada.Text_IO;

procedure Demo is
   A, B, C : Integer;
begin
   A := Mid (1, 2);
   B := Mid (1, -2);
   C := Mid (A, B);
   Put_Line (C'Image);
end Demo;