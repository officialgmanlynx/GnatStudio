package Points is

   subtype Point_Value is Integer;

   type Point_3D is record
      X, Y, Z : Point_Value;
   end record;

   procedure Display (P : Point_3D);

   type Point_3D_Array is
     array (Positive range <>) of Point_3D;

   procedure Display (PA : Point_3D_Array);

end Points;