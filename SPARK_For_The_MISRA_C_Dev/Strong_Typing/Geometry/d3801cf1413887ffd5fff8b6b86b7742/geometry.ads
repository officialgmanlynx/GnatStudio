package Geometry is

   type Point_3D is record
      X, Y, Z : Float;
   end record;

   procedure Rotate_X (P : in out Point_3D) with
     Post => P = P'Old'Update (Y => P.Z'Old, Z => -P.Y'Old);

end Geometry;