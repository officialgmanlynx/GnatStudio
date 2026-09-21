with Points; use Points;

procedure Show_Points is
   P1, P2, P3 : Point_3D;
begin
   P1 := (X => 0.5, Y => 0.7, Z => 0.3);
   Display (P1);

   P2 := (P1 with delta X => 1.0);
   Display (P2);

   P3 := (P1 with delta X => 0.2, Y => 0.3);
   Display (P3);
end Show_Points;