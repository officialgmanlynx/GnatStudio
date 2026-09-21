with Ada.Wide_Wide_Text_IO;
use  Ada.Wide_Wide_Text_IO;

procedure Put_Line_UTF_8_Characters
  (WSS : Wide_Wide_String)
is
   procedure Put_Complete_UTF_8_String
     (WSS : Wide_Wide_String)
   is
   begin
      Put_Line ("STRING: " & WSS);
      Put_Line ("Length: "
                & WSS'Length'Wide_Wide_Image
                & " characters");
      New_Line;
   end Put_Complete_UTF_8_String;

   procedure Put_UTF_8_Characters
     (WSS : Wide_Wide_String)
   is
   begin
      for I in WSS'Range loop
         Put (I'Wide_Wide_Image & ": ");
         Put (WSS (I));
         New_Line;
      end loop;
   end Put_UTF_8_Characters;

begin
    Put_Complete_UTF_8_String (WSS);
    Put_UTF_8_Characters (WSS);
    Put_Line ("--------------------");
end Put_Line_UTF_8_Characters;