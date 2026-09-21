with Ada.Text_IO;  use Ada.Text_IO;

with Custom_Types; use Custom_Types;

procedure Show_Alignment is
   V         : constant UInt_7         := 0;
   Aligned_V : constant Aligned_UInt_7 := 0;
begin
   Put_Line
     ("UInt_7'Alignment:           "
      & UInt_7'Alignment'Image);
   Put_Line
     ("UInt_7'Size:                "
      & UInt_7'Size'Image);
   Put_Line
     ("UInt_7'Object_Size:         "
      & UInt_7'Object_Size'Image);
   Put_Line
     ("V'Alignment:                "
      & V'Alignment'Image);
   Put_Line
     ("V'Size:                     "
      & V'Size'Image);
   New_Line;

   Put_Line
     ("Aligned_UInt_7'Alignment:   "
      & Aligned_UInt_7'Alignment'Image);
   Put_Line
     ("Aligned_UInt_7'Size:        "
      & Aligned_UInt_7'Size'Image);
   Put_Line
     ("Aligned_UInt_7'Object_Size: "
      & Aligned_UInt_7'Object_Size'Image);
   Put_Line
     ("Aligned_V'Alignment:        "
      & Aligned_V'Alignment'Image);
   Put_Line
     ("Aligned_V'Size:             "
      & Aligned_V'Size'Image);
   New_Line;
end Show_Alignment;