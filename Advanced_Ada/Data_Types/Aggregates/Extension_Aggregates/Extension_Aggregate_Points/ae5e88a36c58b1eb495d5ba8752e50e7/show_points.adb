with Points; use Points;

procedure Show_Points is
   P_2D : Point_2D;
   P_3D : Point_3D;
begin
   P_3D := (X => 0.5, Y => 0.7, Z => 0.3);
   Display (P_3D);

   P_2D := (Point_1D (P_3D) with Y => 0.3);
   Display (P_2D);
end Show_Points;