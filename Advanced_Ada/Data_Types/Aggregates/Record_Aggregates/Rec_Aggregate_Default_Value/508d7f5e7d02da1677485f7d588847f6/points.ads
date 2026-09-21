package Points is

   type Point_Value is new Float
     with Default_Value => 99.9;

   type Point_3D is record
      X : Point_Value;
      Y : Point_Value;
      Z : Point_Value;
   end record;

   procedure Display (P : Point_3D);

end Points;