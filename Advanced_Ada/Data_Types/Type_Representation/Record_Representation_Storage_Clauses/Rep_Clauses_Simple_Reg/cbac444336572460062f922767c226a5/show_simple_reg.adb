with Ada.Text_IO; use Ada.Text_IO;

with P;           use P;

procedure Show_Simple_Reg is
begin
   Put_Line ("Simple_Reg'Size:        "
             & Simple_Reg'Size'Image);
   Put_Line ("Simple_Reg'Object_Size: "
             & Simple_Reg'Object_Size'Image);
end Show_Simple_Reg;