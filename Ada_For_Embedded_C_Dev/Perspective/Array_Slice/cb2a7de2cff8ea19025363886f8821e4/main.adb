with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Arr_Type is array (Integer range <>) of Integer;
   A1 : Arr_Type (1 .. 10) := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   A2 : Arr_Type (1 .. 5)  := (1, 2, 3, 4, 5);
begin
   A2 (1 .. 3) := A1 (4 .. 6);

   for I in A2'Range loop
      Put_Line (Integer'Image (A2 (I)));
   end loop;
end Main;