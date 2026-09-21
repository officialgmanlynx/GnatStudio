with Points; use Points;

procedure Show_Array_Aggregates is
   P : Point_3D;
begin
   --  Positional component association
   P := (0, 1, 2);

   Display (P);

   --  Named component association
   P := (1 => 3,
         2 => 4,
         3 => 5);

   Display (P);
end Show_Array_Aggregates;