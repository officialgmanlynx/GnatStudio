package Points is

   type Float_Array is
     array (Positive range <>) of Float;

   type Point_3D is new Float_Array (1 .. 3);

   procedure Display (P : Point_3D);

end Points;