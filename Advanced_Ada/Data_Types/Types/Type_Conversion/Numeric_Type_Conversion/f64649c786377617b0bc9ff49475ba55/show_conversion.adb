with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Conversion is
   F : Float   := 1.0;
   I : Integer := 2;
begin
   I := Integer (F);

   Put_Line ("I : "
             & I'Image);

   I := 4;
   F := Float (I);

   Put_Line ("F :   "
             & F'Image);
end Show_Conversion;