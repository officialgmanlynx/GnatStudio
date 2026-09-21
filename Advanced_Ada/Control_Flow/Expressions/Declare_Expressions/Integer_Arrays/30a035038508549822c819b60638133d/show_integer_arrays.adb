with Ada.Text_IO;    use Ada.Text_IO;

with Integer_Arrays; use Integer_Arrays;

procedure Show_Integer_Arrays is
   Arr : constant Integer_Array := [1, 2, 3];
begin
   Put_Line ("Sum: "
             & Sum (Arr)'Image);
   Put_Line ("Avg: "
             & Avg (Arr)'Image);
end Show_Integer_Arrays;