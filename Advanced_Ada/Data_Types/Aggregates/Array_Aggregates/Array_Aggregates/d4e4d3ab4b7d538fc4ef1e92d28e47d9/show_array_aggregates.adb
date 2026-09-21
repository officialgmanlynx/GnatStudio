with Points; use Points;

procedure Show_Array_Aggregates is
   P : Point_3D := [others => 0];
begin
   --  Positional component association
   P (2 .. 3) := [1, 2];

   Display (P);

   --  Named component association
   P (2 .. 3) := [1 => 3,
                  2 => 4];

   Display (P);
end Show_Array_Aggregates;