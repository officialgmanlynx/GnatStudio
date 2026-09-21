with Points;

procedure Show_Point is
   use type Points.Point;

   P : Points.Point;
begin
   P := Points.Init;
   P := P + 1;
end Show_Point;