with Ada.Strings; use Ada.Strings;

with Ada.Strings.Wide_Wide_Fixed;
use  Ada.Strings.Wide_Wide_Fixed;

with Ada.Strings.Wide_Wide_Maps;
use  Ada.Strings.Wide_Wide_Maps;

with Ada.Wide_Wide_Text_IO;
use  Ada.Wide_Wide_Text_IO;

procedure Show_Find_Words is

   S   : constant Wide_Wide_String :=
           "Hello" & 3 * " World";
   F   : Positive;
   L   : Natural;
   I   : Natural := 1;

   Whitespace : constant
     Wide_Wide_Character_Set :=
       To_Set (' ');
begin
   Put_Line ("String: " & S);
   Put_Line ("String length: "
             & Integer'Wide_Wide_Image
                 (S'Length));

   while I in S'Range loop
      Find_Token
        (Source  => S,
         Set     => Whitespace,
         From    => I,
         Test    => Outside,
         First   => F,
         Last    => L);

      exit when L = 0;

      Put_Line ("Found word instance at position "
                & F'Wide_Wide_Image
                & ": '" & S (F .. L) & "'");

      I := L + 1;
   end loop;

end Show_Find_Words;