with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Arr_Type is array (Integer range <>) of Integer;
   A1 : Arr_Type (-2 .. 42) := (others => 0);
begin
   --  use a slice to assign A1 elements 11 .. 19 to 1
   A1 (11 .. 19) := (others => 1);

   Put_Line ("---- A1 ----");
   for I in A1'Range loop
      Put_Line (Integer'Image (I) & " => " &
                Integer'Image (A1 (I)));
   end loop;
end Main;