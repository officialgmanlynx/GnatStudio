with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.UTF_Encoding;
use  Ada.Strings.UTF_Encoding;

with Ada.Strings.UTF_Encoding.Wide_Wide_Strings;
use  Ada.Strings.UTF_Encoding.Wide_Wide_Strings;

procedure Show_UTF_8 is

   Symbol_UTF_8 : constant UTF_8_String := "𝚡";
   Symbol_WWS   : constant Wide_Wide_String :=
                    Decode (Symbol_UTF_8);

begin
   Put_Line ("Wide_Wide_String Length: "
             & Symbol_WWS'Length'Image);
   Put_Line ("Wide_Wide_String Size:   "
             & Symbol_WWS'Size'Image);
   Put_Line ("UTF-8 String Length:     "
             & Symbol_UTF_8'Length'Image);
   Put_Line ("UTF-8 String Size:       "
             & Symbol_UTF_8'Size'Image);
   New_Line;
   Put_Line ("UTF-8 String:            "
             & Symbol_UTF_8);
end Show_UTF_8;