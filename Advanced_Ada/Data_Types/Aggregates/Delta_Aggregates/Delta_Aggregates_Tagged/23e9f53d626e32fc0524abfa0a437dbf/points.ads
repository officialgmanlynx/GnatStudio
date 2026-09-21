package Points is

   type Point_1D is tagged record
      X : Float;
   end record;

   type Point_2D is new Point_1D with record
      Y : Float;
   end record;

   type Point_3D is new Point_2D with record
      Z : Float;
   end record;

   procedure Display (P : Point_3D);

end Points;