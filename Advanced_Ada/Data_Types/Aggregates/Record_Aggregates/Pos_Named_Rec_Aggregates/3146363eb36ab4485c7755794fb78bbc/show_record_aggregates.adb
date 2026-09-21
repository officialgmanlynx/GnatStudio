with Points; use Points;

procedure Show_Record_Aggregates is
   P : Point_3D;
begin
   --  Specifying X component;
   --  using 42 for all
   --  other components.
   P := (X      => 42,
         others => 100);
   Display (P);

   --  Specifying all components
   P := (others => 256);
   Display (P);
end Show_Record_Aggregates;