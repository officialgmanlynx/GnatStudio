with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Statement_Identifier is
   pragma Warnings (Off, "is not referenced");

   Arr   : constant array (1 .. 5) of Integer :=
             (1, 4, 6, 42, 49);
   Found : Boolean := False;
begin
   <<Find_42>> for E of Arr loop
      if E = 42 then
         Found := True;
         exit;
      end if;
   end loop;

   Put_Line ("Found: " & Found'Image);
end Show_Statement_Identifier;