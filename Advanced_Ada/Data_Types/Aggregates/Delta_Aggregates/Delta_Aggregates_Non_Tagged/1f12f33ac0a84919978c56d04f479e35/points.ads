package Points is

   type Point_3D is record
      X : Float;
      Y : Float;
      Z : Float;
   end record;

   procedure Display (P : Point_3D);

end Points;