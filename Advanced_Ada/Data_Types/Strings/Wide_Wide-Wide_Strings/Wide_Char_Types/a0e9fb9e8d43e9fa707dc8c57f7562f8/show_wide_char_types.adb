with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Wide_Char_Types is
begin
   Put_Line ("Character'Size:           "
             & Integer'Image
                 (Character'Size));
   Put_Line ("Wide_Character'Size:      "
             & Integer'Image
                 (Wide_Character'Size));
   Put_Line ("Wide_Wide_Character'Size: "
             & Integer'Image
                 (Wide_Wide_Character'Size));
end Show_Wide_Char_Types;