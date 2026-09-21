with Ada.Text_IO;   use Ada.Text_IO;
with Custom_Arrays;

procedure Show_Conversion is
   package CA_Int_1 is
     new Custom_Arrays (T => Integer);
   package CA_Int_2 is
     new Custom_Arrays (T => Integer);

   subtype Common_Range is Positive range 1 .. 3;

   AI_1 : CA_Int_1.T_Array (Common_Range);
   AI_2 : CA_Int_2.T_Array (Common_Range);
begin
   AI_2 := [1, 2, 3];
   AI_1 := CA_Int_1.T_Array (AI_2);

   Put_Line ("AI_1: "
             & AI_1'Image);

   AI_1 := [4, 5, 6];
   AI_2 := CA_Int_2.T_Array (AI_1);

   Put_Line ("AI_2: "
             & AI_2'Image);
end Show_Conversion;