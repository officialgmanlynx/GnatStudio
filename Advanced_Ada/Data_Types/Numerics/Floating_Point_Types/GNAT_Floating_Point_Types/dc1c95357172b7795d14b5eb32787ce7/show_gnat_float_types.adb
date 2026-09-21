with Ada.Text_IO; use Ada.Text_IO;

procedure Show_GNAT_Float_Types is
begin

   Put_Line ("Short_Float'Size:          "
             & Short_Float'Size'Image
             & " bits");

   Put_Line ("Float'Size:                "
             & Float'Size'Image
             & " bits");

   Put_Line ("Long_Float'Size:           "
             & Long_Float'Size'Image
             & " bits");

   Put_Line ("Long_Long_Float'Size:      "
             & Long_Long_Float'Size'Image
             & " bits");

end Show_GNAT_Float_Types;