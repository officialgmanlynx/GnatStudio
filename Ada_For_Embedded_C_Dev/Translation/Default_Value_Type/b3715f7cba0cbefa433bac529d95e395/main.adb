with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   type Percentage is range 0 .. 100
     with Default_Value => 10;

   P : Percentage;
begin
   Put_Line ("P = " & Percentage'Image (P));
end Main;