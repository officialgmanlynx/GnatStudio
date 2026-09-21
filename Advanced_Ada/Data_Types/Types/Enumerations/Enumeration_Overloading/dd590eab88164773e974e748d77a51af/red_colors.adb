with Ada.Text_IO; use Ada.Text_IO;
with Colors;      use Colors;

procedure Red_Colors is
   C1 : constant Color         := Red;
   --  Using Red from Color

   C2 : constant Primary_Color := Red;
   --  Using Red from Primary_Color
begin
   if C1 = Red then
      Put_Line ("C1 = Red");
   end if;
   if C2 = Red then
      Put_Line ("C2 = Red");
   end if;
end Red_Colors;