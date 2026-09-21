with Ada.Text_IO;         use Ada.Text_IO;
with Enumeration_Example; use Enumeration_Example;

procedure Show_Renaming is
   D1 : constant Day := Mon;
   D2 : constant Day := Monday;
begin
   if D1 = D2 then
      Put_Line ("D1 = D2");
      Put_Line (Day'Image (D1)
                & " =  "
                & Day'Image (D2));
   end if;
end Show_Renaming;