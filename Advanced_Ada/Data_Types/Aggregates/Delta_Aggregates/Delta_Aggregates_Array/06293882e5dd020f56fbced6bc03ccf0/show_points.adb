with Points; use Points;

procedure Show_Points is
   P1, P2, P3 : Point_3D;
begin
   P1 := [0.5, 0.7, 0.3];
   Display (P1);

   P2 := [P1 with delta 1 => 1.0];
   Display (P2);

   P3 := [P1 with delta 1 => 0.2, 2 => 0.3];
   --  Alternatively:
   --  P3 := [P1 with delta 1 .. 2 => 0.2, 0.3];

   Display (P3);
end Show_Points;