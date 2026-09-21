with Points; use Points;

procedure Show_Record_Aggregates is
   P : Point_3D;
begin
   --  Multiple component selection
   P := (X | Y => 5,
         Z     => 6);

   Display (P);
end Show_Record_Aggregates;