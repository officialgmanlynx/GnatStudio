with Ada.Text_IO;  use Ada.Text_IO;

with Custom_Types; use Custom_Types;

procedure Show_Sizes is
   Arr_1 : UInt_7_Array (1 .. 20);
   Arr_2 : UInt_7_Array_Comp_32 (1 .. 20);
begin
   Put_Line
     ("UInt_7_Array'Size:                   "
      & UInt_7_Array'Size'Image);
   Put_Line
     ("UInt_7_Array'Object_Size:            "
      & UInt_7_Array'Object_Size'Image);
   Put_Line
     ("UInt_7_Array'Component_Size:         "
      & UInt_7_Array'Component_Size'Image);
   Put_Line
     ("Arr_1'Component_Size:                "
      & Arr_1'Component_Size'Image);
   Put_Line
     ("Arr_1'Size:                          "
      & Arr_1'Size'Image);
   New_Line;

   Put_Line
     ("UInt_7_Array_Comp_32'Object_Size:    "
      & UInt_7_Array_Comp_32'Size'Image);
   Put_Line
     ("UInt_7_Array_Comp_32'Object_Size:    "
      & UInt_7_Array_Comp_32'Object_Size'Image);
   Put_Line
     ("UInt_7_Array_Comp_32'Component_Size: "
      &
      UInt_7_Array_Comp_32'Component_Size'Image);
   Put_Line
     ("Arr_2'Component_Size:                "
      & Arr_2'Component_Size'Image);
   Put_Line
     ("Arr_2'Size:                          "
      & Arr_2'Size'Image);
   New_Line;
end Show_Sizes;