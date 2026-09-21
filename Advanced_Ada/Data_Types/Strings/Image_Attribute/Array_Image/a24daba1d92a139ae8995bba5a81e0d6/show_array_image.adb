with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Array_Image is

   type Float_Array is
     array (Positive range <>) of Float;

   FA_3C   : Float_Array (1 .. 3);
   FA_Null : Float_Array (1 .. 0);

begin
   FA_3C   := [1.0, 3.0, 2.0];
   FA_Null := [];

   Put_Line ("FA_3C:   " & FA_3C'Image);
   Put_Line ("FA_Null: " & FA_Null'Image);
end Show_Array_Image;