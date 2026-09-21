with Ada.Text_IO; use Ada.Text_IO;

with Factorial;

procedure Show_Factorial is
begin
   for I in 1 .. 50 loop
      Put_Line (I'Image & "! = "
                & Factorial (I)'Image);
   end loop;
end Show_Factorial;