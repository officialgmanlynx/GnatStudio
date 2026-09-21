with Ada.Text_IO; use Ada.Text_IO;

procedure Main
is
   --  try changing the initial value to change the
   --    output of the program
   V : constant Integer := 0;
begin
   case V is
      when 0 =>
         Put_Line ("Zero");
      when 1 .. 9 =>
         Put_Line ("Positive");
      when 10 | 12 | 14 | 16 | 18 =>
         Put_Line ("Even number between 10 and 18");
      when others =>
         Put_Line ("Something else");
   end case;
end Main;