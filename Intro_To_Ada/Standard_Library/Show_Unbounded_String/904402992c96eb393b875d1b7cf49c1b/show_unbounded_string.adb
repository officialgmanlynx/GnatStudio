with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;

with Ada.Strings.Unbounded;
use  Ada.Strings.Unbounded;

procedure Show_Unbounded_String is
   S1, S2 : Unbounded_String;

   procedure Display_String_Info
     (S : Unbounded_String)
   is
   begin
      Put_Line ("String: " & To_String (S));
      Put_Line ("String Length: "
                & Integer'Image (Length (S)));
   end Display_String_Info;
begin
   S1 := To_Unbounded_String ("Hello");
   --  Alternatively:
   --
   --  A := Null_Unbounded_String & "Hello";

   Display_String_Info (S1);

   S2 := To_Unbounded_String ("Hello World");
   Display_String_Info (S2);

   S1 := To_Unbounded_String
           ("Something longer to say here...");
   Display_String_Info (S1);
end Show_Unbounded_String;