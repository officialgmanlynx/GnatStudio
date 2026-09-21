package Points is

   type Point_3D is record
      X : Integer := 10;
      Y : Integer := 20;
      Z : Integer := 30;
   end record;

   procedure Display (P : Point_3D);

end Points;