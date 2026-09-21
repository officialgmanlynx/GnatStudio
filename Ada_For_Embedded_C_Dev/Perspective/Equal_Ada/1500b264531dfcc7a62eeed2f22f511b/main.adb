with Ada.Text_IO; use Ada.Text_IO;

procedure Main
is
   A : Integer := 0;
begin

   if A := 10 then
      Put_Line ("True");
   else
      Put_Line ("False");
   end if;
end Main;