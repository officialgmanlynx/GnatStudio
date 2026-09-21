with Ada.Text_IO; use Ada.Text_IO;

procedure Main
is
   type Int_Array is array (Natural range 1 .. 100) of Integer;

   List : Int_Array;
begin

   for I in reverse List'Range loop
      List (I) := List'Last - I;
   end loop;

   for I of List loop
      Put (I'Img & " ");

      if I mod 10 = 0 then
         New_Line;
      end if;
   end loop;

end Main;