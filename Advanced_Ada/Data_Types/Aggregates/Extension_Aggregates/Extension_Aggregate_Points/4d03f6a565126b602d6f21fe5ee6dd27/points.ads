package Points is

   type Point_1D is tagged record
      X : Float;
   end record;

   procedure Display (P : Point_1D);

   type Point_2D is new Point_1D with record
      Y : Float;
   end record;

   procedure Display (P : Point_2D);

   type Point_3D is new Point_2D with record
      Z : Float;
   end record;

   procedure Display (P : Point_3D);

end Points;