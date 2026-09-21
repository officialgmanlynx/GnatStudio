with Ada.Text_IO; use Ada.Text_IO;

procedure Main
is
   --  try changing the initial value to change the
   --    output of the program
   V : constant Integer := 0;
begin
   if V > 0 then
      Put_Line ("Positive");
   elsif V < 0 then
      Put_Line ("Negative");
   else
      Put_Line ("Zero");
   end if;
end Main;