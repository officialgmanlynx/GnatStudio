with Ada.Text_IO; use Ada.Text_IO;
with Colors;      use Colors;

procedure Color_Loop is
   subtype Red_To_Blue is Color range Red .. Blue;
begin
   for C in Red_To_Blue loop
      Put_Line (Color'Image (C));
   end loop;
end Color_Loop;