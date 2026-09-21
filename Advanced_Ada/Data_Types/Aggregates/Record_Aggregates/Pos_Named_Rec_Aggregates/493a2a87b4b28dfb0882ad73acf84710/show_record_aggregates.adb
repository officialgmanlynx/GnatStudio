with Points; use Points;

procedure Show_Record_Aggregates is
   P : Point_3D;
begin
   --  Positional and named component associations
   P := (3, 4,
         Z => 5);

   Display (P);
end Show_Record_Aggregates;