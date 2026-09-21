with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.UTF_Encoding;
use  Ada.Strings.UTF_Encoding;

procedure Show_UTF_8 is

   Symbol_UTF_8 : constant
     UTF_8_String :=
       Character'Val (16#e2#)
       & Character'Val (16#98#)
       & Character'Val (16#85#);

begin
   Put_Line ("UTF-8 String: "
             & Symbol_UTF_8);
end Show_UTF_8;