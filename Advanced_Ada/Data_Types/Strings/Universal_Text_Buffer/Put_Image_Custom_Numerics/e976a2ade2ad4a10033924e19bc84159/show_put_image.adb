with Ada.Text_IO;     use Ada.Text_IO;

with Custom_Numerics; use Custom_Numerics;

procedure Show_Put_Image is
   V : Float_Integer;
begin
   V := (F => 100.2,
         I => 100);
   Put_Line ("V = "
             & V'Image);
end Show_Put_Image;