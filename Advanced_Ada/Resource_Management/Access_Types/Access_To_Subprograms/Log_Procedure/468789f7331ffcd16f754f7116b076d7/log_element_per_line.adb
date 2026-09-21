with Ada.Text_IO;     use Ada.Text_IO;
with Data_Processing; use Data_Processing;

procedure Log_Element_Per_Line
  (D : Data_Container) is
begin
   Put_Line ("Elements: ");
   for V of D loop
      Put_Line (V'Image);
   end loop;
   Put_Line ("------");
end Log_Element_Per_Line;