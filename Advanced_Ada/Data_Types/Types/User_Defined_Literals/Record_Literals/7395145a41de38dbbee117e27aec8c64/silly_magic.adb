with Ada.Text_IO;   use Ada.Text_IO;
with Silly_Records; use Silly_Records;

procedure Silly_Magic is
   R1 : Silly;
begin
   R1 := "Magic";
   Put_Line (R1.X'Image & ", " & R1.Y'Image);
end Silly_Magic;