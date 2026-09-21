with Points; use Points;

procedure Show_Record_Aggregates is
   P : Point_3D;
begin
   P := (0, 1, 2);
   Display (P);

   --  Specifying X component.
   P := (X => 42,
         Y => <>,
         Z => <>);
   Display (P);

   --  Specifying Y and Z components.
   P := (X => <>,
         Y => 10,
         Z => 20);
   Display (P);
end Show_Record_Aggregates;