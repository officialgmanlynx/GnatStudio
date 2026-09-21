with Points; use Points;

procedure Show_Points is
   P1, P3 : Point_3D;
begin
   P1 := [0.5, 0.7, 0.3];
   Display (P1);

   P3 := [P1 with delta
            P3'First + 1 .. P3'Last => 0.0];
   Display (P3);
end Show_Points;