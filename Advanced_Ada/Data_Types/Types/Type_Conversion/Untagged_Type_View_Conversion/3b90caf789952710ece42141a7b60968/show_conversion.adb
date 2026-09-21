with Ada.Text_IO; use Ada.Text_IO;
with Double;

procedure Show_Conversion is
   I : Integer;
begin
   I := 2;
   Put_Line ("I : "
             & I'Image);

   declare
      F : Float := Float (I);
   begin
      Double (F);
      I := Integer (F);
   end;
   Put_Line ("I : "
             & I'Image);
end Show_Conversion;