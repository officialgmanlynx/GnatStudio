with Integer_Arrays; use Integer_Arrays;

procedure Show_Array_Aggregates is
   N1 : Integer_Array := [others => 0];
   --  ERROR: range is unknown

   N2 : Integer_Array (1 .. 3) := [others => 0];
   --  OK: range is known
begin
   Display (N1);
   Display (N2);
end Show_Array_Aggregates;