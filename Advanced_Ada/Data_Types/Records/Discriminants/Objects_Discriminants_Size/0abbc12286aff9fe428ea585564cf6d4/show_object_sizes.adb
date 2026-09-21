with Ada.Text_IO; use Ada.Text_IO;

with Recs;        use Recs;

procedure Show_Object_Sizes is
   Null_Rec_A  : Null_Rec (1, 2);
   Null_Rec_B  : Null_Rec (5, 6);
   Rec_Array_A : Rec_Array (10);
   Rec_Array_B : Rec_Array (20);
begin
   Put_Line ("Null_Rec_A'Size = "
             & Null_Rec_A'Size'Image);
   Put_Line ("Null_Rec_B'Size = "
             & Null_Rec_B'Size'Image);
   Put_Line ("Rec_Array_A'Size = "
             & Rec_Array_A'Size'Image);
   Put_Line ("Rec_Array_B'Size = "
             & Rec_Array_B'Size'Image);
end Show_Object_Sizes;