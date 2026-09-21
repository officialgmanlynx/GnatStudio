package Points is

   type Point is private;

   function Init return Point;

   function "+" (P : Point;
                 I : Integer) return Point;

private

   type Point is record
      X, Y : Integer;
   end record;

   function Init return Point is (0, 0);

   function "+" (P : Point;
                 I : Integer) return Point is
     (P.X + I, P.Y + I);

end Points;