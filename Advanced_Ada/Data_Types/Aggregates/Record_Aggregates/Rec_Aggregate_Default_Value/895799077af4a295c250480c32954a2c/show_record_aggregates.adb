with Points; use Points;

procedure Show_Record_Aggregates is
   P : Point_3D := (0.0, 0.0, 0.0);
begin
   --  Using default value of Point_Value
   --  for all components
   P := (X => <>,
         Y => <>,
         Z => <>);
   Display (P);
end Show_Record_Aggregates;