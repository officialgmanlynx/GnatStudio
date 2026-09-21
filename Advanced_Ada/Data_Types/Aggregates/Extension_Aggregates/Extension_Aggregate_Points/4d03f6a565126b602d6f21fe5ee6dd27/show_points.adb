with Points; use Points;

procedure Show_Points is
   P_1D : Point_1D;
   P_2D : Point_2D;
begin
   P_1D := (X => 0.5);
   Display (P_1D);

   P_2D := (P_1D with Y => 0.7);
   Display (P_2D);
end Show_Points;