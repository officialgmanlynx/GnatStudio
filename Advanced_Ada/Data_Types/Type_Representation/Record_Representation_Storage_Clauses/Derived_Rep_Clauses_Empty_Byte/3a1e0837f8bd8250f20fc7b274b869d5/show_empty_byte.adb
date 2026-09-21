with Ada.Text_IO; use Ada.Text_IO;

with P;           use P;
with P.Rep;       use P.Rep;

procedure Show_Empty_Byte is
begin
   Put_Line ("R'Size:        "
             & R'Size'Image);
   Put_Line ("R'Object_Size: "
             & R'Object_Size'Image);

   Put_Line ("R_New'Size:        "
             & R_New'Size'Image);
   Put_Line ("R_New'Object_Size: "
             & R_New'Object_Size'Image);
end Show_Empty_Byte;