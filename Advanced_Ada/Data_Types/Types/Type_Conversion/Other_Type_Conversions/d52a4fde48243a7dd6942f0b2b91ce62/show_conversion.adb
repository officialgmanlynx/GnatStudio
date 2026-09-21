with Ada.Text_IO; use Ada.Text_IO;
with Custom_Rec;  use Custom_Rec;

procedure Show_Conversion is
   R : Rec;
   I : Integer;
begin
   R := (X => 2);
   I := To_Integer (R);

   Put_Line ("I : " & I'Image);
end Show_Conversion;