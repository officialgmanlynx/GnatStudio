with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Statement_Identifier is
   Arr   : constant array (1 .. 5) of Integer :=
             (1, 4, 6, 42, 49);
   Found : Boolean := False;
begin
   Find_42 : for E of Arr loop
      if E = 42 then
         Found := True;
         exit Find_42;
      end if;
   end loop Find_42;

   Put_Line ("Found: " & Found'Image);
end Show_Statement_Identifier;