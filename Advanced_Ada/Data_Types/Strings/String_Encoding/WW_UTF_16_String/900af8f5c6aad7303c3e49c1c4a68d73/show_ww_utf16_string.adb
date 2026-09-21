with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.UTF_Encoding;
use  Ada.Strings.UTF_Encoding;

with Ada.Strings.UTF_Encoding.Wide_Wide_Strings;
use  Ada.Strings.UTF_Encoding.Wide_Wide_Strings;

with Ada.Strings.UTF_Encoding.Conversions;
use  Ada.Strings.UTF_Encoding.Conversions;

procedure Show_WW_UTF16_String is
   Symbols_UTF_16 : constant
     UTF_16_Wide_String :=
       Wide_Character'Val (16#2665#) &
       Wide_Character'Val (16#266B#);
   --  ^ Calling Wide_Character'Val
   --    to specify the UTF-16 BE code
   --    for "♥" and "♫".

   Symbols_WWS : constant
     Wide_Wide_String :=
       Decode (Symbols_UTF_16);
   --  ^ Calling Decode for UTF_16_Wide_String
   --    to Wide_Wide_String conversion.
begin
   Put_Line ("UTF_16_Wide_String: "
             & Convert (Symbols_UTF_16));
   --          ^ Calling Convert for the
   --            UTF_16_Wide_String to
   --            UTF_8_String conversion.

   Put_Line ("Wide_Wide_String:   "
             & Encode (Symbols_WWS));
   --          ^ Calling Encode for the
   --            Wide_Wide_String to
   --            UTF_8_String conversion.
end Show_WW_UTF16_String;