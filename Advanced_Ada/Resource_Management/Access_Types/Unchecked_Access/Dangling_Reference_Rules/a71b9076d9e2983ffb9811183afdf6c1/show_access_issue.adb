with Ada.Text_IO; use Ada.Text_IO;

with Integers; use Integers;

procedure Show_Access_Issue is
   I_Var : aliased Integer := 42;

   A     : Integer_Access;
begin
   A := I_Var'Unchecked_Access;
   --   OK: assignment is now accepted.

   Put_Line ("A.all: " & Integer'Image (A.all));
end Show_Access_Issue;