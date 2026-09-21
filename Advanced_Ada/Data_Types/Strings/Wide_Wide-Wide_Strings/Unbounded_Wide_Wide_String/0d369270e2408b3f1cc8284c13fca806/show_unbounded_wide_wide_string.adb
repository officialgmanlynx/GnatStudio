with Ada.Strings.Wide_Wide_Unbounded;
use  Ada.Strings.Wide_Wide_Unbounded;

with Ada.Wide_Wide_Text_IO.Wide_Wide_Unbounded_IO;
use  Ada.Wide_Wide_Text_IO.Wide_Wide_Unbounded_IO;

procedure Show_Unbounded_Wide_Wide_String is
   S : Unbounded_Wide_Wide_String
     := To_Unbounded_Wide_Wide_String ("Hello");
begin
   S := S & Wide_Wide_String'(" hello");
   Put_Line ("Unbounded wide-wide string: " & S);
end Show_Unbounded_Wide_Wide_String;