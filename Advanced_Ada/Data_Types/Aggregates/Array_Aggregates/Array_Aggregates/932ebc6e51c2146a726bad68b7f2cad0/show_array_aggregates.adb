with Points; use Points;

procedure Show_Array_Aggregates is
   P : Point_3D := [for I in Point_3D'Range => I];
begin
   --  Each component is doubled
   P := [for E of P => E * 2];

   Display (P);

   --  Each component is increased
   --  by one
   P := [for E of P => E + 1];

   Display (P);
end Show_Array_Aggregates;