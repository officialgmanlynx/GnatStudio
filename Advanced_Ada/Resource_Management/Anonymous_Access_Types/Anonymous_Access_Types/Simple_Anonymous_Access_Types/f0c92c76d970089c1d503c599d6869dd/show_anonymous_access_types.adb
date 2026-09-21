with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Anonymous_Access_Types is
   I_Var : aliased Integer;

   A     : access Integer;
   --      ^ Anonymous access type
begin
   A := I_Var'Access;
   --   ^ Assignment to object of
   --     anonymous access type.

   A.all := 22;

   Put_Line ("A.all: " & Integer'Image (A.all));
end Show_Anonymous_Access_Types;