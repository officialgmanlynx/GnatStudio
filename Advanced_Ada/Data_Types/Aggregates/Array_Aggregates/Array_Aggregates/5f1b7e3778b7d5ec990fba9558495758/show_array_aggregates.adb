with Points; use Points;

procedure Show_Array_Aggregates is
   P : Point_3D;
begin
   P := [1 => 4, others => 0];
   --  OK: unspecified components have a
   --      value of zero

   Display (P);
end Show_Array_Aggregates;