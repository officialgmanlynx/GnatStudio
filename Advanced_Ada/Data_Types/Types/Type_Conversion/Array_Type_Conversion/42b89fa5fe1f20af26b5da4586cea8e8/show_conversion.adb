with Ada.Text_IO;     use Ada.Text_IO;
with Custom_Arrays_1; use Custom_Arrays_1;
with Custom_Arrays_2; use Custom_Arrays_2;

procedure Show_Conversion is
   subtype Common_Range is Positive range 1 .. 3;

   AI_1 : Integer_Array_1 (Common_Range);
   AI_2 : Integer_Array_2 (Common_Range);
   AF_1 : Float_Array_1 (Common_Range);
   AF_2 : Float_Array_2 (Common_Range);
begin
   AI_2 := [1, 2, 3];
   AI_1 := Integer_Array_1 (AI_2);

   Put_Line ("AI_1: "
             & AI_1'Image);

   AI_1 := [4, 5, 6];
   AI_2 := Integer_Array_2 (AI_1);

   Put_Line ("AI_2: "
             & AI_2'Image);

   --  ERROR: Cannot convert arrays whose
   --         components have different types:
   --
   --  AF_1 := Float_Array_1 (AI_1);
   --
   --  Instead, use array aggregate where each
   --  component is converted from integer to
   --  float:
   --
   AF_1 := [for I in AF_1'Range =>
              Float (AI_1 (I))];

   Put_Line ("AF_1: "
             & AF_1'Image);

   AF_2 := Float_Array_2 (AF_1);

   Put_Line ("AF_2: "
             & AF_2'Image);
end Show_Conversion;