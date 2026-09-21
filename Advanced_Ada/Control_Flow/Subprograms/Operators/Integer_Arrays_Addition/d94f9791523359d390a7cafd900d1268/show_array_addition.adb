with Ada.Text_IO;    use Ada.Text_IO;
with Integer_Arrays; use Integer_Arrays;

procedure Show_Array_Addition is
   A, B, R : Integer_Array (1 .. 5);
begin
   A := (1 & 2 & 3 & 4 & 5);
   B := (6 & 7 & 8 & 9 & 10);
   R := A + B;

   for E of R loop
      Put (E'Image & ' ');
   end loop;
   New_Line;

end Show_Array_Addition;