with Ada.Text_IO; use Ada.Text_IO;
with Machine_2;   use Machine_2;

procedure Main is
   I : Input;
begin
   I := 3.0;
   if I = Off then
      Put_Line ("Machine is off.");
   else
      Put_Line ("Machine is not off.");
   end if;
end Main;