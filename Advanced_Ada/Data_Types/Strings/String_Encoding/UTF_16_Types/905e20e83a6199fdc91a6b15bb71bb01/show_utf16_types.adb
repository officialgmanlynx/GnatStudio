with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.UTF_Encoding;
use  Ada.Strings.UTF_Encoding;

with Ada.Strings.UTF_Encoding.Conversions;
use  Ada.Strings.UTF_Encoding.Conversions;

procedure Show_UTF16_Types is
   Symbols_UTF_8  : constant
     UTF_8_String := "♥♫";

   Symbols_UTF_16 : constant
     UTF_16_Wide_String :=
       Convert (Symbols_UTF_8);
   --  ^ Calling Convert for UTF_8_String
   --    to UTF_16_Wide_String conversion.

   Symbols_UTF_16BE : constant
     UTF_String :=
       Convert (Item          => Symbols_UTF_8,
                Input_Scheme  => UTF_8,
                Output_Scheme => UTF_16BE);
   --  ^ Calling Convert for UTF_8_String
   --    to UTF_String conversion in UTF-16BE
   --    encoding.
begin
   Put_Line ("UTF_8_String:          "
             & Symbols_UTF_8);

   Put_Line ("UTF_16_Wide_String:    "
             & Convert (Symbols_UTF_16));
   --          ^ Calling Convert for
   --            the UTF_16_Wide_String to
   --            UTF_8_String conversion.

   Put_Line
     ("UTF_String / UTF_16BE: "
      & Convert
          (Item          => Symbols_UTF_16BE,
           Input_Scheme  => UTF_16BE,
           Output_Scheme => UTF_8));
end Show_UTF16_Types;