with Ada.Text_IO;   use Ada.Text_IO;
with Custom_Arrays; use Custom_Arrays;

procedure Show_Conversion is
   subtype Common_Range is Positive range 1 .. 3;

   AI : Integer_Array (Common_Range);
   AI_D : Derived_Integer_Array (Common_Range);
begin
   AI_D := [1, 2, 3];
   AI := Integer_Array (AI_D);

   Put_Line ("AI: "
             & AI'Image);

   AI   := [4, 5, 6];
   AI_D := Derived_Integer_Array (AI);

   Put_Line ("AI_D: "
             & AI_D'Image);
end Show_Conversion;