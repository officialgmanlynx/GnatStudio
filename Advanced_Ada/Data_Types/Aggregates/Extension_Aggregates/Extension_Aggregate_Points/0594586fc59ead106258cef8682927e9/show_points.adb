with Points; use Points;

procedure Show_Points is
   P_1D : Point_1D;
   P_2D : Point_2D;
   P_3D : Point_3D;
begin
   P_1D := (X => 0.5);
   P_2D := (P_1D with Y => 0.7);

   --  Initialize P_3D with P_1D and set other
   --  components to 0.6.
   --
   P_3D := (P_1D with others => 0.6);
   Display (P_3D);

   --  Initialize P_3D with P_2D, and other
   --  components with their default value.
   --
   P_3D := (P_2D with others => <>);
   Display (P_3D);
end Show_Points;