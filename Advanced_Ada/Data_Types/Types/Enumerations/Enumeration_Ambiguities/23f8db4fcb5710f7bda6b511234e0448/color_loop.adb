with Ada.Text_IO; use Ada.Text_IO;
with Colors;      use Colors;

procedure Color_Loop is
begin
   for C in Color range Red .. Blue loop
      Put_Line (Color'Image (C));
   end loop;
end Color_Loop;