with Ada.Text_IO;

procedure Main
is
   --  variable declaration
   A, B : Integer := 0;
   C    : Integer := 100;
   D    : Integer;
begin
   --  Ada does not have a shortcut format for increment like in C
   A := A + 1;

   --  regular addition
   D := A + B + C;

   --  printing the result
   Ada.Text_IO.Put_Line ("D =" & D'Img);

   declare
      E : constant Integer := D * 100;
   begin
      --  printing the result
      Ada.Text_IO.Put_Line ("E =" & E'Img);
   end;

end Main;