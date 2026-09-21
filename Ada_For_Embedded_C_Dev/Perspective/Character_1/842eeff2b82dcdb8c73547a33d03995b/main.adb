with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   C : Character := 'a';
begin
   Put (C);
   C := Character'Succ (C);
   Put (C);
end Main;