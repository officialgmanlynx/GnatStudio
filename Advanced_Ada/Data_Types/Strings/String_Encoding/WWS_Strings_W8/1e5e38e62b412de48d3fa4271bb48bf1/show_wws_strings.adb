with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;

procedure Show_WWS_Strings is

   package TIO   renames Ada.Text_IO;
   package WWTIO renames Ada.Wide_Wide_Text_IO;

   Symbols_WWS : constant
     Wide_Wide_String := "♥♫";

begin
   WWTIO.Put_Line ("Wide_Wide_String: "
                   & Symbols_WWS);

   TIO.Put_Line ("Length:           "
                 & Symbols_WWS'Length'Image);

end Show_WWS_Strings;