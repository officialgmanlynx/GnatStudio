with Points; use Points;

procedure Show_Record_Aggregates is
   P : Point_3D;
begin
   --  Positional component association
   P := (0, 1, 2);

   Display (P);

   --  Named component association
   P := (X => 3,
         Y => 4,
         Z => 5);

   Display (P);
end Show_Record_Aggregates;