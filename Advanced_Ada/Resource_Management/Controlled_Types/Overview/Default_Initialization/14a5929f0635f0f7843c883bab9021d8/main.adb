with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Int is new Integer
     with Default_Value => 42;

   I  : Int;
   AI : access Int;
begin
   Put_Line ("I : "
             & I'Image);
   Put_Line ("AI : "
             & AI'Image);
end Main;