with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.UTF_Encoding;
use  Ada.Strings.UTF_Encoding;

procedure Show_UTF_8_Strings is

    Symbols_UTF_8 : constant
      UTF_8_String := "♥♫";

begin
    Put_Line ("UTF_8_String: "
              & Symbols_UTF_8);

    Put_Line ("Length:       "
              & Symbols_UTF_8'Length'Image);

end Show_UTF_8_Strings;