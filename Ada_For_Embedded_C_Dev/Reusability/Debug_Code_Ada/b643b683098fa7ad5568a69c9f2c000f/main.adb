with Ada.Text_IO; use Ada.Text_IO;
with Config;
with Func;

procedure Main is
   A, B : Integer;
begin
   A := 10;
   B := Func (A);

   if Config.Debug then
      Put_Line ("Func(" & Integer'Image (A) & ") => "
                & Integer'Image (B));
   end if;
end Main;