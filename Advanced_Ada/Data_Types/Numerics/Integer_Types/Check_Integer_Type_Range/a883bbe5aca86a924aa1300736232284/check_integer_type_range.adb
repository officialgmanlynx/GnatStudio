with Ada.Text_IO; use Ada.Text_IO;

procedure Check_Integer_Type_Range is
begin
   Put_Line ("Integer'Size  :"
             & Integer'Size'Image
             & " bits");
   Put_Line ("Integer'First :"
             & Integer'First'Image);
   Put_Line ("Integer'Last  :"
             & Integer'Last'Image);
end Check_Integer_Type_Range;