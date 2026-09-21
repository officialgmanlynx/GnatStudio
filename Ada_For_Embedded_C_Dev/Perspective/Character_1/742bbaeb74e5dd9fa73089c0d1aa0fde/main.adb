with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   C : Character := 'a';
begin
   Put (C);
   C := Character'Val (Character'Pos (C) + 1);
   Put (C);
end Main;