with Ada.Text_IO; use Ada.Text_IO;
with Types; use Types;
with Count;

procedure Test_Count is
   P : constant Int_Array := (0, 3, 9, 3, 3);
   C : constant Integer := Count (P, 3);
begin
   Put_Line ("value 3 is seen" & C'Img & " times in p");
end Test_Count;