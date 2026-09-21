with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.UTF_Encoding;
use  Ada.Strings.UTF_Encoding;

with Ada.Strings.UTF_Encoding.Wide_Wide_Strings;
use  Ada.Strings.UTF_Encoding.Wide_Wide_Strings;

with Ada.Strings.Wide_Wide_Unbounded;
use  Ada.Strings.Wide_Wide_Unbounded;

procedure Show_WW_UTF_String is

   function To_UWWS
     (Source : Wide_Wide_String)
      return Unbounded_Wide_Wide_String
        renames To_Unbounded_Wide_Wide_String;

   function To_WWS
     (Source : Unbounded_Wide_Wide_String)
      return Wide_Wide_String
        renames To_Wide_Wide_String;

   Hello_World_Arabic : constant
     UTF_8_String := "مرحبا يا عالم";
   WWS_Hello_World_Arabic : constant
     Wide_Wide_String :=
       Decode (Hello_World_Arabic);

   UWWS : Unbounded_Wide_Wide_String;
begin
   UWWS := "Hello World: "
           & To_UWWS (WWS_Hello_World_Arabic);

   Show_WW_String : declare
      WWS : constant Wide_Wide_String :=
              To_WWS (UWWS);
   begin
      Put_Line ("Wide_Wide_String Length: "
                & WWS'Length'Image);
      Put_Line ("Wide_Wide_String Size:   "
                & WWS'Size'Image);
   end Show_WW_String;

   Put_Line
     ("---------------------------------------");
   Put_Line
     ("Converting Wide_Wide_String to UTF-8...");

   Show_UTF_8_String : declare
      S_UTF_8 : constant UTF_8_String :=
                  Encode (To_WWS (UWWS));
   begin
      Put_Line ("UTF-8 String:        "
                & S_UTF_8);
      Put_Line ("UTF-8 String Length: "
                & S_UTF_8'Length'Image);
      Put_Line ("UTF-8 String Size:   "
                & S_UTF_8'Size'Image);
   end Show_UTF_8_String;

end Show_WW_UTF_String;