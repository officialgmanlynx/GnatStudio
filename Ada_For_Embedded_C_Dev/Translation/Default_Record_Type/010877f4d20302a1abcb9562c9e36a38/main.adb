with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   type Rec is record
      X : Integer := 10;
      Y : Integer := 11;
   end record;

   R : Rec;
begin
   Put_Line ("R.X = " & Integer'Image (R.X));
   Put_Line ("R.Y = " & Integer'Image (R.Y));
end Main;