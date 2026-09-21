with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Arr_Type is array (Integer range <>) of Integer;
   A1 : Arr_Type (1 .. 2) := (10, 20);
   A2 : Arr_Type (1 .. 2) := (10, 20);
begin
   if A1 = A2 then
     Put_Line ("A1 = A2");
   else
     Put_Line ("A1 /= A2");
   end if;
end Main;