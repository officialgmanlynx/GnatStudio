with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Image_Value_Attr is
   I : constant Integer := Integer'Value ("42");
begin
   Put_Line (I'Image);
end Show_Image_Value_Attr;