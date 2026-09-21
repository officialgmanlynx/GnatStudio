with Ada.Text_IO;  use Ada.Text_IO;

with Custom_Types; use Custom_Types;

procedure Show_Sizes is
   V1 : UInt_7;
   V2 : UInt_7_S24;
begin
   Put_Line ("UInt_7'Size:            "
             & UInt_7'Size'Image);
   Put_Line ("UInt_7'Object_Size:     "
             & UInt_7'Object_Size'Image);
   Put_Line ("V1'Size:                "
             & V1'Size'Image);
   New_Line;

   Put_Line ("UInt_7_S24'Size:        "
             & UInt_7_S24'Size'Image);
   Put_Line ("UInt_7_S24'Object_Size: "
             & UInt_7_S24'Object_Size'Image);
   Put_Line ("V2'Size:                "
             & V2'Size'Image);
end Show_Sizes;