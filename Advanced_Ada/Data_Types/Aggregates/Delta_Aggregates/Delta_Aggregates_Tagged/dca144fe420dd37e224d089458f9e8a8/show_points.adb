with Points; use Points;

procedure Show_Points is

   P_3D : Point_3D;

   function Reset (P_2D : Point_2D'Class)
                   return Point_2D'Class is
     ((P_2D with delta X | Y => 0.0));

begin
   P_3D := (X => 0.1, Y => 0.2, Z => 0.3);
   Display (P_3D);

   P_3D := Point_3D (Reset (P_3D));
   Display (P_3D);

end Show_Points;