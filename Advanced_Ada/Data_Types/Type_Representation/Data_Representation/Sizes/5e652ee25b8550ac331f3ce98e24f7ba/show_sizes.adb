with Ada.Text_IO;  use Ada.Text_IO;
with System;

with Custom_Types; use Custom_Types;

procedure Show_Sizes is
   AV1, AV2 : UInt_7_Access;
begin
   Put_Line
     ("UInt_7_Access'Storage_Size:          "
      & UInt_7_Access'Storage_Size'Image);
   Put_Line
     ("UInt_7_Access'Storage_Size (bits):   "
      & Integer'Image (UInt_7_Access'Storage_Size
                       * System.Storage_Unit));

   Put_Line
     ("UInt_7'Size:               "
      & UInt_7'Size'Image);
   Put_Line
     ("UInt_7_Access'Size:        "
      & UInt_7_Access'Size'Image);
   Put_Line
     ("UInt_7_Access'Object_Size: "
      & UInt_7_Access'Object_Size'Image);
   Put_Line
     ("AV1'Size:                  "
      & AV1'Size'Image);
   New_Line;

   Put_Line ("Allocating AV1...");
   AV1 := new UInt_7;
   Put_Line ("Allocating AV2...");
   AV2 := new UInt_7;
   New_Line;

   Put_Line
     ("AV1.all'Size:              "
      & AV1.all'Size'Image);
   New_Line;
end Show_Sizes;