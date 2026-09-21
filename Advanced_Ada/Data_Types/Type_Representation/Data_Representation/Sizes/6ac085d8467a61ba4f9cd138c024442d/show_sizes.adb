with Ada.Text_IO;  use Ada.Text_IO;
with System;

with Custom_Types; use Custom_Types;

procedure Show_Sizes is
   RAV1, RAV2 : UInt_7_Reserved_Access;
begin
   Put_Line
   ("UInt_7_Reserved_Access'Storage_Size:        "
    & UInt_7_Reserved_Access'Storage_Size'Image);

   Put_Line
   ("UInt_7_Reserved_Access'Storage_Size (bits): "
    & Integer'Image
        (UInt_7_Reserved_Access'Storage_Size
         * System.Storage_Unit));

   Put_Line
     ("UInt_7_Reserved_Access'Size:        "
      & UInt_7_Reserved_Access'Size'Image);
   Put_Line
     ("UInt_7_Reserved_Access'Object_Size: "
      & UInt_7_Reserved_Access'Object_Size'Image);
   Put_Line
     ("RAV1'Size:                          "
      & RAV1'Size'Image);
   New_Line;

   Put_Line ("Allocating RAV1...");
   RAV1 := new UInt_7;
   Put_Line ("Allocating RAV2...");
   RAV2 := new UInt_7;
   New_Line;
end Show_Sizes;