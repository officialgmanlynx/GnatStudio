with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.UTF_Encoding;
use  Ada.Strings.UTF_Encoding;

with Ada.Strings.UTF_Encoding.Wide_Wide_Strings;
use  Ada.Strings.UTF_Encoding.Wide_Wide_Strings;

procedure Put_Line_UTF_8_Characters
  (WSS : Wide_Wide_String)
is
   procedure Put_Complete_UTF_8_String
     (WSS : Wide_Wide_String)
   is
      S_UTF_8 : constant UTF_8_String :=
                  Encode (WSS);
   begin
      Put_Line ("STRING: " & S_UTF_8);
      Put_Line ("Length: "
                & WSS'Length'Image
                & " characters");
      New_Line;
   end Put_Complete_UTF_8_String;

   --  This is a wrapper function of the
   --  Encode function for the
   --  Wide_Wide_Character type:
   function Encode (Item : Wide_Wide_Character)
                    return UTF_8_String
    is
       SC : constant Wide_Wide_String (1 .. 1)
              := (1 => Item);
       --  We need a 1-character string
       --  for the call to Encode.
   begin
       return Encode (SC);
   end Encode;

   procedure Put_UTF_8_Characters
     (WSS : Wide_Wide_String) is
   begin
      for I in WSS'Range loop
         Put (I'Image & ": ");
         Put (Encode (WSS (I)));
         New_Line;
      end loop;
   end Put_UTF_8_Characters;

begin
    Put_Complete_UTF_8_String (WSS);
    Put_UTF_8_Characters (WSS);
    Put_Line ("--------------------");
end Put_Line_UTF_8_Characters;