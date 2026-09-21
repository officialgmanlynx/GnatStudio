with Points;

procedure Show_Point is
   use all type Points.Point;

   P : Points.Point;
begin
   P := Init;
   P := P + 1;
end Show_Point;