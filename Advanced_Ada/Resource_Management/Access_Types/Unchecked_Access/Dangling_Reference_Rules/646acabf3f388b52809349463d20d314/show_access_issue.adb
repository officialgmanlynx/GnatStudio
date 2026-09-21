with Ada.Text_IO; use Ada.Text_IO;

with Integers; use Integers;

procedure Show_Access_Issue is
   I_Var : aliased Integer := 42;

   A     : Integer_Access;
begin
   A := I_Var'Access;
   --   PROBLEM: A has the same lifetime as I_Var,
   --            but Integer_Access type has a
   --            longer lifetime.

   Put_Line ("A.all: " & Integer'Image (A.all));
end Show_Access_Issue;