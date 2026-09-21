with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Universal_Access is
   I : aliased Integer;
   A : access Integer := I'Access;
   B : access Integer := I'Access;
begin
   if A = B then
      Put_Line ("A = B");
   else
      Put_Line ("A /= B");
   end if;
end Show_Universal_Access;