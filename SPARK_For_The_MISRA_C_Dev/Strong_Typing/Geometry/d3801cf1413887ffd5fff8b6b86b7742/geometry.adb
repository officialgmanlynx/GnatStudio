package body Geometry is

   procedure Rotate_X (P : in out Point_3D) is
      Tmp : constant Float := P.Y;
   begin
      P.Y := P.Z;
      P.Z := -Tmp;
   end Rotate_X;

end Geometry;