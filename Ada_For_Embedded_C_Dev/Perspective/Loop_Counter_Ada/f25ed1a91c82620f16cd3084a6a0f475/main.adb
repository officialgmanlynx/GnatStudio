with Ada.Text_IO; use Ada.Text_IO;

procedure Main
is
   My_Range : constant := 10;
begin
   for I in reverse 0 .. My_Range loop
      Put_Line (I'Img);
   end loop;
end Main;