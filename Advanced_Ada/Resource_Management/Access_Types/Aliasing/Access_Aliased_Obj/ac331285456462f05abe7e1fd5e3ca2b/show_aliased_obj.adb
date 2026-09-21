with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Aliased_Obj is
   type Integer_Access is access all Integer;

   I_Var  : aliased Integer;
   A1, A2 : Integer_Access;
begin
   A1 := I_Var'Access;
   A2 := A1;

   A1.all := 22;
   Put_Line ("A1: " & Integer'Image (A1.all));
   Put_Line ("A2: " & Integer'Image (A2.all));

   A2.all := 24;
   Put_Line ("A1: " & Integer'Image (A1.all));
   Put_Line ("A2: " & Integer'Image (A2.all));

end Show_Aliased_Obj;