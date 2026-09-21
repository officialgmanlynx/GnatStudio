with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Strings;         use Ada.Strings;
with Ada.Strings.Bounded;

procedure Show_Width_Attr is
   package B_Str is new
     Ada.Strings.Bounded.Generic_Bounded_Length
       (Max => Integer'Width);
   use B_Str;

   Str_I : Bounded_String;

   I : constant Integer := 42;
   J : constant Integer := 103;
begin
   Str_I := To_Bounded_String (I'Image);
   Put_Line ("Value:         "
             & To_String (Str_I));
   Put_Line ("String Length: "
             & Length (Str_I)'Image);
   Put_Line ("----");

   Str_I := To_Bounded_String (J'Image);
   Put_Line ("Value:         "
             & To_String (Str_I));
   Put_Line ("String Length: "
             & Length (Str_I)'Image);
end Show_Width_Attr;