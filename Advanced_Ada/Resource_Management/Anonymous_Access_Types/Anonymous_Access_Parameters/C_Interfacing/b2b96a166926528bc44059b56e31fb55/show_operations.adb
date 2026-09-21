with Ada.Text_IO; use Ada.Text_IO;

with Operations;  use Operations;

procedure Show_Operations is
   I : access Integer := Alloc_Integer;
begin
   I.all := 42;
   Put_Line (I.all'Image);

   Add_One (I.all);
   Put_Line (I.all'Image);

   Dealloc_Integer (I);
end Show_Operations;