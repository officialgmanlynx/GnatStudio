with Ada.Text_IO;   use Ada.Text_IO;
with Limited_Types; use Limited_Types;

procedure Show_Limited_Equality is
   A : Simple_Rec := Init (5);
   B : Simple_Rec := Init (6);
begin
   if A = B then
      Put_Line ("A = B");
   else
      Put_Line ("A /= B");
   end if;
end Show_Limited_Equality;