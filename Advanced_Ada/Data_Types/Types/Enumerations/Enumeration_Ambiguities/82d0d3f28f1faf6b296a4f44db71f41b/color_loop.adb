with Ada.Text_IO; use Ada.Text_IO;
with Colors;      use Colors;

procedure Color_Loop is
begin
   for C in Red .. Blue loop
   --       ^^^^^^^^^^^
   --  ERROR: range is ambiguous!
      Put_Line (Color'Image (C));
   end loop;
end Color_Loop;