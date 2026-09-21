with Points; use Points;

procedure Show_Points is
   P_1D : Point_1D;
   P_2D : Point_2D;
   P_3D : Point_3D;
begin
   P_1D := (X => 0.5);
   Display (P_1D);

   P_2D := (P_1D with Y => 0.7);
   Display (P_2D);

   P_3D := (P_2D with Z => 0.3);
   Display (P_3D);

   P_3D := (P_1D with Y | Z => 0.1);
   Display (P_3D);
end Show_Points;