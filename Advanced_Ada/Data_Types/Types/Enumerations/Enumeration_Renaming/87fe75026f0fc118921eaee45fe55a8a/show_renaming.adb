with Ada.Text_IO; use Ada.Text_IO;

with Enumeration_Renaming;
use  Enumeration_Renaming;

procedure Show_Renaming is
   D1 : constant Day := Monday;
begin
   Put_Line (Day'Image (D1));
end Show_Renaming;