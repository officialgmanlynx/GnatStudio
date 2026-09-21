with Ada.Text_IO; use Ada.Text_IO;

with P;           use P;

procedure Show_Empty_Byte is
begin
   Put_Line ("R'Size:        "
             & R'Size'Image);
   Put_Line ("R'Object_Size: "
             & R'Object_Size'Image);
end Show_Empty_Byte;