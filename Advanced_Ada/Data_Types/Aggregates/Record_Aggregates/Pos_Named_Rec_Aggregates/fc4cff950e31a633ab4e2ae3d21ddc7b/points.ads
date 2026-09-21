package Points is

   type Point_3D is record
      X, Y, Z : Integer;
   end record;

   procedure Display (P : Point_3D);

end Points;