with Points;

procedure Show_Point is
   P : Points.Point;
begin
   P := Points.Init;
   P := Points."+" (P, 1);
end Show_Point;