with Ada.Wide_Wide_Text_IO;
use  Ada.Wide_Wide_Text_IO;

procedure Show_Wide_Wide_Image is
   F : Float;
begin
   F := 100.0;
   Put_Line ("F = "
             & F'Wide_Wide_Image);
end Show_Wide_Wide_Image;