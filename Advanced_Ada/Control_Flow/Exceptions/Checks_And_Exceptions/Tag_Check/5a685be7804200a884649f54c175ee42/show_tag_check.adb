with Ada.Text_IO; use Ada.Text_IO;
with Ada.Tags;

with P;           use P;

procedure Show_Tag_Check is

   A1 : T'Class := T1'(null record);
   A2 : T'Class := T2'(null record);

begin
   Put_Line ("A1'Tag: "
             & Ada.Tags.Expanded_Name (A1'Tag));
   Put_Line ("A2'Tag: "
             & Ada.Tags.Expanded_Name (A2'Tag));

   A2 := A1;

end Show_Tag_Check;