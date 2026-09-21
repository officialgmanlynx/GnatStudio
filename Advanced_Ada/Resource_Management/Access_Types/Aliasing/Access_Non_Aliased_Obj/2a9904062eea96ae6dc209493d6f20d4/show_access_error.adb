with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Access_Error is
   type Integer_Access is access all Integer;
   I_Var : Integer;
   A1    : Integer_Access;
begin
   A1 := I_Var'Access;

   A1.all := 22;
   Put_Line ("A1: " & Integer'Image (A1.all));
end Show_Access_Error;