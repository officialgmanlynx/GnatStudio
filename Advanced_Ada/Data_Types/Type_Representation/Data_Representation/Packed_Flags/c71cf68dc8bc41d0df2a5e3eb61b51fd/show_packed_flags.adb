with Ada.Text_IO;      use Ada.Text_IO;
with Flag_Definitions; use Flag_Definitions;

procedure Show_Packed_Flags is
   Flags_1 : Flags (1 .. 8);
   Flags_2 : Packed_Flags (1 .. 8);
begin
   Put_Line ("Boolean'Size:           "
             & Boolean'Size'Image);
   Put_Line ("Boolean'Object_Size:    "
             & Boolean'Object_Size'Image);
   Put_Line ("Flags_1'Size:           "
             & Flags_1'Size'Image);
   Put_Line ("Flags_1'Component_Size: "
             & Flags_1'Component_Size'Image);
   Put_Line ("Flags_2'Size:           "
             & Flags_2'Size'Image);
   Put_Line ("Flags_2'Component_Size: "
             & Flags_2'Component_Size'Image);
end Show_Packed_Flags;