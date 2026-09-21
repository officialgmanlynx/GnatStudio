with Ada.Text_IO; use Ada.Text_IO;
with Double;

procedure Show_Conversion is
   I : Integer;
begin
   I := 2;
   Put_Line ("I : "
             & I'Image);

   --  Calling Double with
   --  Integer parameter:
   Double (Float (I));
   Put_Line ("I : "
             & I'Image);
end Show_Conversion;