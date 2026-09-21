with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Aliased_Access_Obj is

   type Integer_Access        is
     access all Integer;
   type Integer_Access_Access is
     access all Integer_Access;

   I_Var : aliased Integer;
   A     : aliased Integer_Access;
   B     : Integer_Access_Access;
begin
   A := I_Var'Access;
   B := A'Access;

   B.all.all := 22;
   Put_Line ("A: " & Integer'Image (A.all));
   Put_Line ("B: " & Integer'Image (B.all.all));
end Show_Aliased_Access_Obj;