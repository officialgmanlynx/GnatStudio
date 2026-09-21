procedure Hello_World is
   with Ada.Text_IO; -- Illegal
begin
   Ada.Text_IO.Put_Line ("hello, world!");
end Hello_World;