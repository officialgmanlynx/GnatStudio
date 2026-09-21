with Ada.Text_IO; use Ada.Text_IO;
with P;           use P;

procedure Main is
   I : Integer := Integer'Last;
begin
   I := Add_Max (I);
   Put_Line ("I = " & Integer'Image (I));
end Main;