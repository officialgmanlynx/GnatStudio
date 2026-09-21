with Points; use Points;

procedure Show_Array_Aggregates is
   P : Point_3D;
begin
   P := [1 => 4];
   --  ERROR: value of components at indices
   --         2 and 3 are missing

   Display (P);
end Show_Array_Aggregates;