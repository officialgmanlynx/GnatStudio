with Ada.Text_IO; use Ada.Text_IO;

procedure Show_GNAT_Integer_Types is
begin

   Put_Line ("Short_Short_Integer'Size:    "
             & Short_Short_Integer'Size'Image
             & " bits");

   Put_Line ("Short_Integer'Size:          "
             & Short_Integer'Size'Image
             & " bits");

   Put_Line ("Integer'Size:                "
             & Integer'Size'Image
             & " bits");

   Put_Line ("Long_Integer'Size:           "
             & Long_Integer'Size'Image
             & " bits");

   Put_Line ("Long_Long_Integer'Size:      "
             & Long_Long_Integer'Size'Image
             & " bits");

   Put_Line ("Long_Long_Long_Integer'Size: "
             & Long_Long_Long_Integer'Size'Image
             & " bits");

end Show_GNAT_Integer_Types;