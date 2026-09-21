with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Arr_Type is array (Integer range <>) of Character;
   Arr : Arr_Type (1 .. 26);
   C : Character := 'a';
begin
   for I in Arr'Range loop
      Arr (I) := C;
      C := Character'Succ (C);

      Put (Arr (I) & " ");

      if I mod 7 = 0 then
         New_Line;
      end if;
   end loop;
end Main;